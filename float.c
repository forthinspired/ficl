/*******************************************************************
** f l o a t . c
** Forth Inspired Command Language
** ANS Forth FLOAT word-set written in C
** Author: Guy Carver & John Sadler (john_sadler@alum.mit.edu)
** Created: Apr 2001
** $Id: //depot/gamejones/ficl/float.c#15 $
*******************************************************************/
/*
** Copyright (c) 1997-2001 John Sadler (john_sadler@alum.mit.edu)
** All rights reserved.
**
** Get the latest Ficl release at http://ficl.sourceforge.net
**
** I am interested in hearing from anyone who uses Ficl. If you have
** a problem, a success story, a defect, an enhancement request, or
** if you would like to contribute to the Ficl release, please
** contact me by email at the address above.
**
** L I C E N S E  and  D I S C L A I M E R
** 
** Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions
** are met:
** 1. Redistributions of source code must retain the above copyright
**    notice, this list of conditions and the following disclaimer.
** 2. Redistributions in binary form must reproduce the above copyright
**    notice, this list of conditions and the following disclaimer in the
**    documentation and/or other materials provided with the distribution.
**
** THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
** ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
** IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
** ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
** DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
** OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
** LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
** OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
** SUCH DAMAGE.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <math.h>
#include "ficl.h"

#if FICL_WANT_FLOAT


/*******************************************************************
** Create a floating point constant.
** fconstant ( r -"name"- )
*******************************************************************/
static void ficlPrimitiveFConstant(ficlVm *vm)
{
    ficlDictionary *dictionary = ficlVmGetDictionary(vm);
    ficlString name = ficlVmGetWord(vm);

    FICL_STACK_CHECK(vm->floatStack, 1, 0);

    ficlDictionaryAppendWord(dictionary, name, (ficlPrimitive)ficlInstructionFConstantParen, FICL_WORD_DEFAULT);
    ficlDictionaryAppendCell(dictionary, ficlStackPop(vm->floatStack));
}


ficlWord   *ficlDictionaryAppendFConstant(ficlDictionary *dictionary, char *name, float value)
{
	ficlString s;
	FICL_STRING_SET_FROM_CSTRING(s, name);
	return ficlDictionaryAppendConstantInstruction(dictionary, s, ficlInstructionFConstantParen, *(ficlInteger *)(&value));
}


ficlWord   *ficlDictionarySetFConstant(ficlDictionary *dictionary, char *name, float value)
{
    ficlString s;
    FICL_STRING_SET_FROM_CSTRING(s, name);
    return ficlDictionarySetConstantInstruction(dictionary, s, ficlInstructionFConstantParen, *(ficlInteger *)(&value));
}




static void ficlPrimitiveF2Constant(ficlVm *vm)
{
    ficlDictionary *dictionary = ficlVmGetDictionary(vm);
    ficlString name = ficlVmGetWord(vm);

    FICL_STACK_CHECK(vm->floatStack, 2, 0);

    ficlDictionaryAppendWord(dictionary, name, (ficlPrimitive)ficlInstructionF2ConstantParen, FICL_WORD_DEFAULT);
    ficlDictionaryAppendCell(dictionary, ficlStackPop(vm->floatStack));
    ficlDictionaryAppendCell(dictionary, ficlStackPop(vm->floatStack));
}


ficlWord   *ficlDictionaryAppendF2Constant(ficlDictionary *dictionary, char *name, double value)
{
    ficlString s;
    FICL_STRING_SET_FROM_CSTRING(s, name);
    return ficlDictionaryAppend2ConstantInstruction(dictionary, s, ficlInstructionF2ConstantParen, *(ficl2Integer *)(&value));
}


ficlWord   *ficlDictionarySetF2Constant(ficlDictionary *dictionary, char *name, double value)
{
    ficlString s;
    FICL_STRING_SET_FROM_CSTRING(s, name);
    return ficlDictionarySet2ConstantInstruction(dictionary, s, ficlInstructionF2ConstantParen, *(ficl2Integer *)(&value));
}


/*******************************************************************
** Display a float in decimal format.
** f. ( r -- )
*******************************************************************/
static void ficlPrimitiveFDot(ficlVm *vm)
{
    float f;

    FICL_STACK_CHECK(vm->floatStack, 1, 0);

    f = ficlStackPopFloat(vm->floatStack);
    sprintf(vm->pad,"%#f ",f);
    ficlVmTextOut(vm, vm->pad);
}

/*******************************************************************
** Display a float in engineering format.
** fe. ( r -- )
*******************************************************************/
static void ficlPrimitiveEDot(ficlVm *vm)
{
    float f;

    FICL_STACK_CHECK(vm->floatStack, 1, 0);

    f = ficlStackPopFloat(vm->floatStack);
    sprintf(vm->pad,"%#e ",f);
    ficlVmTextOut(vm, vm->pad);
}

/**************************************************************************
                        d i s p l a y FS t a c k
** Display the parameter stack (code for "f.s")
** f.s ( -- )
**************************************************************************/
struct stackContext
{
    ficlVm *vm;
    int count;
};

static ficlInteger ficlFloatStackDisplayCallback(void *c, ficlCell *cell)
{
    struct stackContext *context = (struct stackContext *)c;
    char buffer[64];
    sprintf(buffer, "[0x%08x %3d] %16f (0x%08x)\n", cell, context->count++, (double)(cell->f), cell->i);
    ficlVmTextOut(context->vm, buffer);
	return FICL_TRUE;
}



void ficlVmDisplayFloatStack(ficlVm *vm)
{
    struct stackContext context;
	context.vm = vm;
	context.count = 0;
    ficlStackDisplay(vm->floatStack, ficlFloatStackDisplayCallback, &context);
    return;
}



/*******************************************************************
** Do float stack depth.
** fdepth ( -- n )
*******************************************************************/
static void ficlPrimitiveFDepth(ficlVm *vm)
{
    int i;

    FICL_STACK_CHECK(vm->dataStack, 0, 1);

    i = ficlStackDepth(vm->floatStack);
    ficlStackPushInteger(vm->dataStack, i);
}

/*******************************************************************
** Compile a floating point literal.
*******************************************************************/
static void ficlPrimitiveFLiteralImmediate(ficlVm *vm)
{
    ficlDictionary *dictionary = ficlVmGetDictionary(vm);
	ficlCell cell;


    FICL_STACK_CHECK(vm->floatStack, 1, 0);


	cell = ficlStackPop(vm->floatStack);
	if (cell.f == 1.0f)
	{
		ficlDictionaryAppendUnsigned(dictionary, ficlInstructionF1);
	}
	else if (cell.f == 0.0f)
	{
		ficlDictionaryAppendUnsigned(dictionary, ficlInstructionF0);
	}
	else if (cell.f == -1.0f)
	{
		ficlDictionaryAppendUnsigned(dictionary, ficlInstructionFNeg1);
	}
	else
	{
		ficlDictionaryAppendUnsigned(dictionary, ficlInstructionFLiteralParen);
		ficlDictionaryAppendCell(dictionary, cell);
	}
}

/**************************************************************************
                     F l o a t P a r s e S t a t e
** Enum to determine the current segement of a floating point number
** being parsed.
**************************************************************************/
#define NUMISNEG 1
#define EXPISNEG 2

typedef enum _floatParseState
{
    FPS_START,
    FPS_ININT,
    FPS_INMANT,
    FPS_STARTEXP,
    FPS_INEXP
} FloatParseState;

/**************************************************************************
                     f i c l P a r s e F l o a t N u m b e r
** vm -- Virtual Machine pointer.
** s -- String to parse.
** Returns 1 if successful, 0 if not.
**************************************************************************/
int ficlVmParseFloatNumber( ficlVm *vm, ficlString s)
{
    unsigned char c;
	unsigned char digit;
    char *trace;
    ficlUnsigned length;
    float power;
    float accum = 0.0f;
    float mant = 0.1f;
    ficlInteger exponent = 0;
    char flag = 0;
    FloatParseState estate = FPS_START;


    FICL_STACK_CHECK(vm->floatStack, 0, 1);

	
    /*
    ** floating point numbers only allowed in base 10 
    */
    if (vm->base != 10)
        return(0);


    trace = FICL_STRING_GET_POINTER(s);
    length = FICL_STRING_GET_LENGTH(s);

    /* Loop through the string's characters. */
    while ((length--) && ((c = *trace++) != 0))
    {
        switch (estate)
        {
            /* At start of the number so look for a sign. */
            case FPS_START:
            {
                estate = FPS_ININT;
                if (c == '-')
                {
                    flag |= NUMISNEG;
                    break;
                }
                if (c == '+')
                {
                    break;
                }
            } /* Note!  Drop through to FPS_ININT */
            /*
            **Converting integer part of number.
            ** Only allow digits, decimal and 'E'. 
            */
            case FPS_ININT:
            {
                if (c == '.')
                {
                    estate = FPS_INMANT;
                }
                else if ((c == 'e') || (c == 'E'))
                {
                    estate = FPS_STARTEXP;
                }
                else
                {
                    digit = (unsigned char)(c - '0');
                    if (digit > 9)
                        return(0);

                    accum = accum * 10 + digit;

                }
                break;
            }
            /*
            ** Processing the fraction part of number.
            ** Only allow digits and 'E' 
            */
            case FPS_INMANT:
            {
                if ((c == 'e') || (c == 'E'))
                {
                    estate = FPS_STARTEXP;
                }
                else
                {
                    digit = (unsigned char)(c - '0');
                    if (digit > 9)
                        return(0);

                    accum += digit * mant;
                    mant *= 0.1f;
                }
                break;
            }
            /* Start processing the exponent part of number. */
            /* Look for sign. */
            case FPS_STARTEXP:
            {
                estate = FPS_INEXP;

                if (c == '-')
                {
                    flag |= EXPISNEG;
                    break;
                }
                else if (c == '+')
                {
                    break;
                }
            }       /* Note!  Drop through to FPS_INEXP */
            /*
            ** Processing the exponent part of number.
            ** Only allow digits. 
            */
            case FPS_INEXP:
            {
                digit = (unsigned char)(c - '0');
                if (digit > 9)
                    return(0);

                exponent = exponent * 10 + digit;

                break;
            }
        }
    }

    /* If parser never made it to the exponent this is not a float. */
    if (estate < FPS_STARTEXP)
        return(0);

    /* Set the sign of the number. */
    if (flag & NUMISNEG)
        accum = -accum;

    /* If exponent is not 0 then adjust number by it. */
    if (exponent != 0)
    {
        /* Determine if exponent is negative. */
        if (flag & EXPISNEG)
        {
            exponent = -exponent;
        }
        /* power = 10^x */
        power = (float)pow(10.0, exponent);
        accum *= power;
    }

    ficlStackPushFloat(vm->floatStack, accum);
    if (vm->state == FICL_VM_STATE_COMPILE)
        ficlPrimitiveFLiteralImmediate(vm);

    return(1);
}


#if FICL_WANT_LOCALS

static void ficlPrimitiveFLocalParen(ficlVm *vm)
{
   ficlLocalParen(vm, FICL_FALSE, FICL_TRUE);
}

static void ficlPrimitiveF2LocalParen(ficlVm *vm)
{
   ficlLocalParen(vm, FICL_TRUE, FICL_TRUE);
}

#endif /* FICL_WANT_LOCALS */

#endif  /* FICL_WANT_FLOAT */

/**************************************************************************
** Add float words to a system's dictionary.
** system -- Pointer to the Ficl sytem to add float words to.
**************************************************************************/
void ficlSystemCompileFloat(ficlSystem *system)
{
#if FICL_WANT_FLOAT
    ficlDictionary *dictionary = ficlSystemGetDictionary(system);
    ficlDictionary *environment = ficlSystemGetEnvironment(system);

    FICL_SYSTEM_ASSERT(system, dictionary);
    FICL_SYSTEM_ASSERT(system, environment);

    ficlDictionarySetPrimitive(dictionary, "fconstant", ficlPrimitiveFConstant,      FICL_WORD_DEFAULT);
    ficlDictionarySetPrimitive(dictionary, "fvalue", ficlPrimitiveFConstant,      FICL_WORD_DEFAULT);
    ficlDictionarySetPrimitive(dictionary, "f2constant", ficlPrimitiveF2Constant,      FICL_WORD_DEFAULT);
    ficlDictionarySetPrimitive(dictionary, "f2value",  ficlPrimitiveF2Constant,      FICL_WORD_DEFAULT);
    ficlDictionarySetPrimitive(dictionary, "fdepth",    ficlPrimitiveFDepth,         FICL_WORD_DEFAULT);
    ficlDictionarySetPrimitive(dictionary, "fliteral",  ficlPrimitiveFLiteralImmediate,     FICL_WORD_IMMEDIATE);
    ficlDictionarySetPrimitive(dictionary, "f.",        ficlPrimitiveFDot,           FICL_WORD_DEFAULT);
    ficlDictionarySetPrimitive(dictionary, "f.s",       ficlVmDisplayFloatStack,  FICL_WORD_DEFAULT);
    ficlDictionarySetPrimitive(dictionary, "fe.",       ficlPrimitiveEDot,           FICL_WORD_DEFAULT);

#if FICL_WANT_LOCALS
    ficlDictionarySetPrimitive(dictionary, "(flocal)",   ficlPrimitiveFLocalParen,     FICL_WORD_COMPILE_ONLY);
    ficlDictionarySetPrimitive(dictionary, "(f2local)",  ficlPrimitiveF2LocalParen,  FICL_WORD_COMPILE_ONLY);
#endif /* FICL_WANT_LOCALS */

 /* 
    Missing words:

    d>f
    f>d 
    falign 
    faligned 
    float+
    floats
    floor
    fmax
    fmin
*/

    ficlDictionarySetConstant(environment, "floating",       FICL_FALSE);  /* not all required words are present */
    ficlDictionarySetConstant(environment, "floating-ext",   FICL_FALSE);
    ficlDictionarySetConstant(environment, "floating-stack", system->stackSize);
#else /* FICL_WANT_FLOAT */
	/* get rid of unused parameter warning */
	system = NULL;
#endif
    return;
}
