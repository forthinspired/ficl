/*
** Ficl softcore generator.
** Generates both uncompressed and Lempel-Ziv compressed versions.
** Strips blank lines, strips full-line comments, collapses whitespace.
** Chops, blends, dices, makes julienne fries.
**
** Contributed by Larry Hastings, larry@hastings.org
**/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "../ficl.h"


void fprintDataAsHex(FILE *f, char *data, int length)
	{
	int i;
	while (length)
		{
		fprintf(f, "\t");
		for (i = 0; (i < 8) && length; i++)
			{
			char buf[16];
			/* if you don't do this little stuff, you get ugly sign-extended 0xFFFFFF6b crap. */
			sprintf(buf, "%08x", (unsigned int)*data++);
			fprintf(f, "0x%s, ", buf + 6);
			length--;
			}
		fprintf(f, "\n");
		}
	}

void fprintDataAsQuotedString(FILE *f, char *data)
	{
	int i;
	int lineIsBlank = FICL_TRUE;

	while (*data)
		{
		if (*data == '\n')
			{
			if (!lineIsBlank)
				fprintf(f, "\\n\"\n");
			lineIsBlank = FICL_TRUE;
			}
		else
			{
			if (lineIsBlank)
				{
				fputc('\t', f);
				fputc('"', f);
				lineIsBlank = FICL_FALSE;
				}

			if (*data == '"')
				fprintf(f, "\\\"");
			else if (*data == '\\')
				fprintf(f, "\\\\");
			else
				fputc(*data, f);
			}
		data++;
		}
	if (!lineIsBlank)
		fprintf(f, "\"");
	}

int main(int argc, char *argv[])
	{
	char *uncompressed = (char *)malloc(128 * 1024);
	char *compressed;
	char *trace = uncompressed;
	int i;
	int compressedSize;
	int uncompressedSize;
	char *src, *dst;
	FILE *f;
	time_t currentTimeT;
	struct tm *currentTime;
	char cleverTime[32];

	time(&currentTimeT);
	currentTime = localtime(&currentTimeT);
	strftime(cleverTime, sizeof(cleverTime), "%Y/%m/%d %H:%M:%S", currentTime);

	*trace++ = ' ';

	for (i = 1; i < argc; i++)
		{
		int size;
		/*
		** This ensures there's always whitespace space between files.   It *also*
		** ensures that src[-1] is always safe in comment detection code below.
		** (Any leading whitespace will be thrown away in a later pass.)
		** --lch
		*/
		*trace++ = ' ';

		f = fopen(argv[i], "rb");
		fseek(f, 0, SEEK_END);
		size = ftell(f);
		fseek(f, 0, SEEK_SET);
		fread(trace, 1, size, f);
		fclose(f);
		trace += size;
		}
	*trace = 0;
	
#define IS_EOL(x) ((*x == '\n') || (*x == '\r'))
#define IS_EOL_COMMENT(x) (((x[0] == '\\') && isspace(x[1]))  || ((x[0] == '/') && (x[1] == '/') && isspace(x[2])))
#define IS_BLOCK_COMMENT(x) ((x[0] == '(') && isspace(x[1]) && isspace(x[-1]))

	src = dst = uncompressed;
	while (*src)
		{
		/* ignore leading whitespace, or entirely blank lines */
		while (isspace(*src))
			src++;
		/* if the line is commented out */
		if (IS_EOL_COMMENT(src))
			{
			/* throw away this entire line */
			while (*src && !IS_EOL(src))
				src++;
			continue;
			}
		/*
		** This is where we'd throw away mid-line comments, but
		** that's simply unsafe.  Things like
		**      start-prefixes
		**      : \ postpone \ ;
		**      : ( postpone ( ;
		** get broken that way.
		** --lch
		*/
		while (*src && !IS_EOL(src))
		{
			*dst++ = *src++;
		}

		/* strip trailing whitespace */
		dst--;
		while (isspace(*dst))
			dst--;
		dst++;

		/* and end the line */
		*dst++ = '\n';
		}

	*dst = 0;

	/* now make a second pass to collapse all contiguous whitespace to a single space. */
	src = dst = uncompressed;
	while (*src)
	{
		*dst++ = *src;
		if (!isspace(*src))
			src++;
		else
		{
			while (isspace(*src))
				src++;
		}
	}
	*dst = 0;

	f = fopen("../softcore.c", "wt");
	if (f == NULL)
		{
		printf("couldn't open ../softcore.c for writing!  giving up.\n");
		exit(-1);
		}

	fprintf(f,
"/*\n"
"** Ficl softcore\n"
"** both uncompressed and Lempel-Ziv compressed versions.\n"
"**\n"
"** Generated %s\n"
"**/\n"
"\n"
"#include \"ficl.h\"\n"
"\n"
"\n",
	cleverTime);
	
	uncompressedSize = dst - uncompressed;
	ficlLzCompress(uncompressed, uncompressedSize, &compressed, &compressedSize);

	fprintf(f, "static size_t ficlSoftcoreUncompressedSize = %d; /* not including trailing null */\n", uncompressedSize);
	fprintf(f, "\n");
	fprintf(f, "#if !FICL_WANT_LZ_SOFTCORE\n");
	fprintf(f, "\n");
	fprintf(f, "static char ficlSoftcoreUncompressed[] =\n");
	fprintDataAsQuotedString(f, uncompressed);
	fprintf(f, ";\n");
	fprintf(f, "\n");
	fprintf(f, "#else /* !FICL_WANT_LZ_SOFTCORE */\n");
	fprintf(f, "\n");
	fprintf(f, "static unsigned char ficlSoftcoreCompressed[%d] = {\n", compressedSize);
	fprintDataAsHex(f, compressed, compressedSize);
	fprintf(f, "\t};\n");
	fprintf(f, "\n");
	fprintf(f, "#endif /* !FICL_WANT_LZ_SOFTCORE */\n");
	fprintf(f,
"\n"
"\n"
"void ficlSystemCompileSoftCore(ficlSystem *system)\n"
"{\n"
"    ficlVm *vm = system->vmList;\n"
"    int returnValue;\n"
"    ficlCell oldSourceID = vm->sourceId;\n"
"    ficlString s;\n"
"#if FICL_WANT_LZ_SOFTCORE\n"
"    char *ficlSoftcoreUncompressed = NULL;\n"
"    size_t gotUncompressedSize = 0;\n"
"    returnValue = ficlLzUncompress(ficlSoftcoreCompressed, (unsigned char **)&ficlSoftcoreUncompressed, &gotUncompressedSize);\n"
"    FICL_VM_ASSERT(vm, returnValue == 0);\n"
"    FICL_VM_ASSERT(vm, gotUncompressedSize == ficlSoftcoreUncompressedSize);\n"
"#endif /* FICL_WANT_LZ_SOFTCORE */\n"
"    vm->sourceId.i = -1;\n"
"    FICL_STRING_SET_POINTER(s, (char *)(ficlSoftcoreUncompressed));\n"
"    FICL_STRING_SET_LENGTH(s, ficlSoftcoreUncompressedSize);\n" 
"    returnValue = ficlVmExecuteString(vm, s);\n"
"    vm->sourceId = oldSourceID;\n"
"#if FICL_WANT_LZ_SOFTCORE\n"
"    free(ficlSoftcoreUncompressed);\n"
"#endif /* FICL_WANT_LZ_SOFTCORE */\n"
"    FICL_VM_ASSERT(vm, returnValue != FICL_VM_STATUS_ERROR_EXIT);\n"
"    return;\n"
"}\n"
"\n"
"/* end-of-file */\n"
		);
	free(uncompressed);
	free(compressed);
	}
