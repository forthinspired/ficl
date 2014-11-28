# Microsoft Developer Studio Generated NMAKE File, Based on ficllib.dsp
!IF "$(CFG)" == ""
CFG=ficllib - Win32 Debug Multithreaded DLL
!MESSAGE No configuration specified. Defaulting to ficllib - Win32 Debug Multithreaded DLL.
!ENDIF 

!IF "$(CFG)" != "ficllib - Win32 Debug Singlethreaded" && "$(CFG)" != "ficllib - Win32 Debug Multithreaded" && "$(CFG)" != "ficllib - Win32 Debug Multithreaded DLL" && "$(CFG)" != "ficllib - Win32 Release Singlethreaded" && "$(CFG)" != "ficllib - Win32 Release Multithreaded" && "$(CFG)" != "ficllib - Win32 Release Multithreaded DLL"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ficllib.mak" CFG="ficllib - Win32 Debug Multithreaded DLL"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ficllib - Win32 Debug Singlethreaded" (based on "Win32 (x86) Static Library")
!MESSAGE "ficllib - Win32 Debug Multithreaded" (based on "Win32 (x86) Static Library")
!MESSAGE "ficllib - Win32 Debug Multithreaded DLL" (based on "Win32 (x86) Static Library")
!MESSAGE "ficllib - Win32 Release Singlethreaded" (based on "Win32 (x86) Static Library")
!MESSAGE "ficllib - Win32 Release Multithreaded" (based on "Win32 (x86) Static Library")
!MESSAGE "ficllib - Win32 Release Multithreaded DLL" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "ficllib - Win32 Debug Singlethreaded"

OUTDIR=.\lib/debug/singlethreaded
INTDIR=.\lib/debug/singlethreaded
# Begin Custom Macros
OutDir=.\lib/debug/singlethreaded
# End Custom Macros

ALL : "$(OUTDIR)\ficl.lib"


CLEAN :
	-@erase "$(INTDIR)\bit.obj"
	-@erase "$(INTDIR)\callback.obj"
	-@erase "$(INTDIR)\compatibility.obj"
	-@erase "$(INTDIR)\dictionary.obj"
	-@erase "$(INTDIR)\double.obj"
	-@erase "$(INTDIR)\extras.obj"
	-@erase "$(INTDIR)\fileaccess.obj"
	-@erase "$(INTDIR)\float.obj"
	-@erase "$(INTDIR)\hash.obj"
	-@erase "$(INTDIR)\lzuncompress.obj"
	-@erase "$(INTDIR)\prefix.obj"
	-@erase "$(INTDIR)\primitives.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\softcore.obj"
	-@erase "$(INTDIR)\stack.obj"
	-@erase "$(INTDIR)\system.obj"
	-@erase "$(INTDIR)\tools.obj"
	-@erase "$(INTDIR)\utility.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vm.obj"
	-@erase "$(INTDIR)\win32.obj"
	-@erase "$(INTDIR)\word.obj"
	-@erase "$(OUTDIR)\ficl.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W4 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /Fp"$(INTDIR)\ficllib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /Zm200 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficllib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ficl.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bit.obj" \
	"$(INTDIR)\callback.obj" \
	"$(INTDIR)\compatibility.obj" \
	"$(INTDIR)\dictionary.obj" \
	"$(INTDIR)\double.obj" \
	"$(INTDIR)\extras.obj" \
	"$(INTDIR)\fileaccess.obj" \
	"$(INTDIR)\float.obj" \
	"$(INTDIR)\hash.obj" \
	"$(INTDIR)\lzuncompress.obj" \
	"$(INTDIR)\prefix.obj" \
	"$(INTDIR)\primitives.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\softcore.obj" \
	"$(INTDIR)\stack.obj" \
	"$(INTDIR)\system.obj" \
	"$(INTDIR)\tools.obj" \
	"$(INTDIR)\utility.obj" \
	"$(INTDIR)\vm.obj" \
	"$(INTDIR)\win32.obj" \
	"$(INTDIR)\word.obj"

"$(OUTDIR)\ficl.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficllib - Win32 Debug Multithreaded"

OUTDIR=.\lib/debug/multithreaded
INTDIR=.\lib/debug/multithreaded
# Begin Custom Macros
OutDir=.\lib/debug/multithreaded
# End Custom Macros

ALL : "$(OUTDIR)\ficl.lib"


CLEAN :
	-@erase "$(INTDIR)\bit.obj"
	-@erase "$(INTDIR)\callback.obj"
	-@erase "$(INTDIR)\compatibility.obj"
	-@erase "$(INTDIR)\dictionary.obj"
	-@erase "$(INTDIR)\double.obj"
	-@erase "$(INTDIR)\extras.obj"
	-@erase "$(INTDIR)\fileaccess.obj"
	-@erase "$(INTDIR)\float.obj"
	-@erase "$(INTDIR)\hash.obj"
	-@erase "$(INTDIR)\lzuncompress.obj"
	-@erase "$(INTDIR)\prefix.obj"
	-@erase "$(INTDIR)\primitives.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\softcore.obj"
	-@erase "$(INTDIR)\stack.obj"
	-@erase "$(INTDIR)\system.obj"
	-@erase "$(INTDIR)\tools.obj"
	-@erase "$(INTDIR)\utility.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vm.obj"
	-@erase "$(INTDIR)\win32.obj"
	-@erase "$(INTDIR)\word.obj"
	-@erase "$(OUTDIR)\ficl.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W4 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /Fp"$(INTDIR)\ficllib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /Zm200 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficllib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ficl.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bit.obj" \
	"$(INTDIR)\callback.obj" \
	"$(INTDIR)\compatibility.obj" \
	"$(INTDIR)\dictionary.obj" \
	"$(INTDIR)\double.obj" \
	"$(INTDIR)\extras.obj" \
	"$(INTDIR)\fileaccess.obj" \
	"$(INTDIR)\float.obj" \
	"$(INTDIR)\hash.obj" \
	"$(INTDIR)\lzuncompress.obj" \
	"$(INTDIR)\prefix.obj" \
	"$(INTDIR)\primitives.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\softcore.obj" \
	"$(INTDIR)\stack.obj" \
	"$(INTDIR)\system.obj" \
	"$(INTDIR)\tools.obj" \
	"$(INTDIR)\utility.obj" \
	"$(INTDIR)\vm.obj" \
	"$(INTDIR)\win32.obj" \
	"$(INTDIR)\word.obj"

"$(OUTDIR)\ficl.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficllib - Win32 Debug Multithreaded DLL"

OUTDIR=.\lib/debug/multithreaded_dll
INTDIR=.\lib/debug/multithreaded_dll
# Begin Custom Macros
OutDir=.\lib/debug/multithreaded_dll
# End Custom Macros

ALL : "$(OUTDIR)\ficl.lib"


CLEAN :
	-@erase "$(INTDIR)\bit.obj"
	-@erase "$(INTDIR)\callback.obj"
	-@erase "$(INTDIR)\compatibility.obj"
	-@erase "$(INTDIR)\dictionary.obj"
	-@erase "$(INTDIR)\double.obj"
	-@erase "$(INTDIR)\extras.obj"
	-@erase "$(INTDIR)\fileaccess.obj"
	-@erase "$(INTDIR)\float.obj"
	-@erase "$(INTDIR)\hash.obj"
	-@erase "$(INTDIR)\lzuncompress.obj"
	-@erase "$(INTDIR)\prefix.obj"
	-@erase "$(INTDIR)\primitives.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\softcore.obj"
	-@erase "$(INTDIR)\stack.obj"
	-@erase "$(INTDIR)\system.obj"
	-@erase "$(INTDIR)\tools.obj"
	-@erase "$(INTDIR)\utility.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vm.obj"
	-@erase "$(INTDIR)\win32.obj"
	-@erase "$(INTDIR)\word.obj"
	-@erase "$(OUTDIR)\ficl.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W4 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /Fp"$(INTDIR)\ficllib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /Zm200 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficllib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ficl.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bit.obj" \
	"$(INTDIR)\callback.obj" \
	"$(INTDIR)\compatibility.obj" \
	"$(INTDIR)\dictionary.obj" \
	"$(INTDIR)\double.obj" \
	"$(INTDIR)\extras.obj" \
	"$(INTDIR)\fileaccess.obj" \
	"$(INTDIR)\float.obj" \
	"$(INTDIR)\hash.obj" \
	"$(INTDIR)\lzuncompress.obj" \
	"$(INTDIR)\prefix.obj" \
	"$(INTDIR)\primitives.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\softcore.obj" \
	"$(INTDIR)\stack.obj" \
	"$(INTDIR)\system.obj" \
	"$(INTDIR)\tools.obj" \
	"$(INTDIR)\utility.obj" \
	"$(INTDIR)\vm.obj" \
	"$(INTDIR)\win32.obj" \
	"$(INTDIR)\word.obj"

"$(OUTDIR)\ficl.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficllib - Win32 Release Singlethreaded"

OUTDIR=.\lib/release/singlethreaded
INTDIR=.\lib/release/singlethreaded
# Begin Custom Macros
OutDir=.\lib/release/singlethreaded
# End Custom Macros

ALL : "$(OUTDIR)\ficl.lib"


CLEAN :
	-@erase "$(INTDIR)\bit.obj"
	-@erase "$(INTDIR)\callback.obj"
	-@erase "$(INTDIR)\compatibility.obj"
	-@erase "$(INTDIR)\dictionary.obj"
	-@erase "$(INTDIR)\double.obj"
	-@erase "$(INTDIR)\extras.obj"
	-@erase "$(INTDIR)\fileaccess.obj"
	-@erase "$(INTDIR)\float.obj"
	-@erase "$(INTDIR)\hash.obj"
	-@erase "$(INTDIR)\lzuncompress.obj"
	-@erase "$(INTDIR)\prefix.obj"
	-@erase "$(INTDIR)\primitives.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\softcore.obj"
	-@erase "$(INTDIR)\stack.obj"
	-@erase "$(INTDIR)\system.obj"
	-@erase "$(INTDIR)\tools.obj"
	-@erase "$(INTDIR)\utility.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vm.obj"
	-@erase "$(INTDIR)\win32.obj"
	-@erase "$(INTDIR)\word.obj"
	-@erase "$(OUTDIR)\ficl.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W4 /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D FICL_ROBUST=0 /Fp"$(INTDIR)\ficllib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /Zm200 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficllib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ficl.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bit.obj" \
	"$(INTDIR)\callback.obj" \
	"$(INTDIR)\compatibility.obj" \
	"$(INTDIR)\dictionary.obj" \
	"$(INTDIR)\double.obj" \
	"$(INTDIR)\extras.obj" \
	"$(INTDIR)\fileaccess.obj" \
	"$(INTDIR)\float.obj" \
	"$(INTDIR)\hash.obj" \
	"$(INTDIR)\lzuncompress.obj" \
	"$(INTDIR)\prefix.obj" \
	"$(INTDIR)\primitives.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\softcore.obj" \
	"$(INTDIR)\stack.obj" \
	"$(INTDIR)\system.obj" \
	"$(INTDIR)\tools.obj" \
	"$(INTDIR)\utility.obj" \
	"$(INTDIR)\vm.obj" \
	"$(INTDIR)\win32.obj" \
	"$(INTDIR)\word.obj"

"$(OUTDIR)\ficl.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficllib - Win32 Release Multithreaded"

OUTDIR=.\lib/release/multithreaded
INTDIR=.\lib/release/multithreaded
# Begin Custom Macros
OutDir=.\lib/release/multithreaded
# End Custom Macros

ALL : "$(OUTDIR)\ficl.lib"


CLEAN :
	-@erase "$(INTDIR)\bit.obj"
	-@erase "$(INTDIR)\callback.obj"
	-@erase "$(INTDIR)\compatibility.obj"
	-@erase "$(INTDIR)\dictionary.obj"
	-@erase "$(INTDIR)\double.obj"
	-@erase "$(INTDIR)\extras.obj"
	-@erase "$(INTDIR)\fileaccess.obj"
	-@erase "$(INTDIR)\float.obj"
	-@erase "$(INTDIR)\hash.obj"
	-@erase "$(INTDIR)\lzuncompress.obj"
	-@erase "$(INTDIR)\prefix.obj"
	-@erase "$(INTDIR)\primitives.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\softcore.obj"
	-@erase "$(INTDIR)\stack.obj"
	-@erase "$(INTDIR)\system.obj"
	-@erase "$(INTDIR)\tools.obj"
	-@erase "$(INTDIR)\utility.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vm.obj"
	-@erase "$(INTDIR)\win32.obj"
	-@erase "$(INTDIR)\word.obj"
	-@erase "$(OUTDIR)\ficl.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W4 /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D FICL_ROBUST=0 /Fp"$(INTDIR)\ficllib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /Zm200 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficllib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ficl.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bit.obj" \
	"$(INTDIR)\callback.obj" \
	"$(INTDIR)\compatibility.obj" \
	"$(INTDIR)\dictionary.obj" \
	"$(INTDIR)\double.obj" \
	"$(INTDIR)\extras.obj" \
	"$(INTDIR)\fileaccess.obj" \
	"$(INTDIR)\float.obj" \
	"$(INTDIR)\hash.obj" \
	"$(INTDIR)\lzuncompress.obj" \
	"$(INTDIR)\prefix.obj" \
	"$(INTDIR)\primitives.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\softcore.obj" \
	"$(INTDIR)\stack.obj" \
	"$(INTDIR)\system.obj" \
	"$(INTDIR)\tools.obj" \
	"$(INTDIR)\utility.obj" \
	"$(INTDIR)\vm.obj" \
	"$(INTDIR)\win32.obj" \
	"$(INTDIR)\word.obj"

"$(OUTDIR)\ficl.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficllib - Win32 Release Multithreaded DLL"

OUTDIR=.\lib/release/multithreaded_dll
INTDIR=.\lib/release/multithreaded_dll
# Begin Custom Macros
OutDir=.\lib/release/multithreaded_dll
# End Custom Macros

ALL : "$(OUTDIR)\ficl.lib"


CLEAN :
	-@erase "$(INTDIR)\bit.obj"
	-@erase "$(INTDIR)\callback.obj"
	-@erase "$(INTDIR)\compatibility.obj"
	-@erase "$(INTDIR)\dictionary.obj"
	-@erase "$(INTDIR)\double.obj"
	-@erase "$(INTDIR)\extras.obj"
	-@erase "$(INTDIR)\fileaccess.obj"
	-@erase "$(INTDIR)\float.obj"
	-@erase "$(INTDIR)\hash.obj"
	-@erase "$(INTDIR)\lzuncompress.obj"
	-@erase "$(INTDIR)\prefix.obj"
	-@erase "$(INTDIR)\primitives.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\softcore.obj"
	-@erase "$(INTDIR)\stack.obj"
	-@erase "$(INTDIR)\system.obj"
	-@erase "$(INTDIR)\tools.obj"
	-@erase "$(INTDIR)\utility.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vm.obj"
	-@erase "$(INTDIR)\win32.obj"
	-@erase "$(INTDIR)\word.obj"
	-@erase "$(OUTDIR)\ficl.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W4 /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D FICL_ROBUST=0 /Fp"$(INTDIR)\ficllib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /Zm200 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficllib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ficl.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bit.obj" \
	"$(INTDIR)\callback.obj" \
	"$(INTDIR)\compatibility.obj" \
	"$(INTDIR)\dictionary.obj" \
	"$(INTDIR)\double.obj" \
	"$(INTDIR)\extras.obj" \
	"$(INTDIR)\fileaccess.obj" \
	"$(INTDIR)\float.obj" \
	"$(INTDIR)\hash.obj" \
	"$(INTDIR)\lzuncompress.obj" \
	"$(INTDIR)\prefix.obj" \
	"$(INTDIR)\primitives.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\softcore.obj" \
	"$(INTDIR)\stack.obj" \
	"$(INTDIR)\system.obj" \
	"$(INTDIR)\tools.obj" \
	"$(INTDIR)\utility.obj" \
	"$(INTDIR)\vm.obj" \
	"$(INTDIR)\win32.obj" \
	"$(INTDIR)\word.obj"

"$(OUTDIR)\ficl.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("ficllib.dep")
!INCLUDE "ficllib.dep"
!ELSE 
!MESSAGE Warning: cannot find "ficllib.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "ficllib - Win32 Debug Singlethreaded" || "$(CFG)" == "ficllib - Win32 Debug Multithreaded" || "$(CFG)" == "ficllib - Win32 Debug Multithreaded DLL" || "$(CFG)" == "ficllib - Win32 Release Singlethreaded" || "$(CFG)" == "ficllib - Win32 Release Multithreaded" || "$(CFG)" == "ficllib - Win32 Release Multithreaded DLL"
SOURCE=.\bit.c

"$(INTDIR)\bit.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\callback.c

"$(INTDIR)\callback.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\compatibility.c

"$(INTDIR)\compatibility.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=dictionary.c

"$(INTDIR)\dictionary.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=double.c

"$(INTDIR)\double.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\extras.c

"$(INTDIR)\extras.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=fileaccess.c

"$(INTDIR)\fileaccess.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=float.c

"$(INTDIR)\float.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\hash.c

"$(INTDIR)\hash.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\lzuncompress.c

"$(INTDIR)\lzuncompress.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=prefix.c

"$(INTDIR)\prefix.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\primitives.c

"$(INTDIR)\primitives.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=search.c

"$(INTDIR)\search.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=softcore.c

"$(INTDIR)\softcore.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=stack.c

"$(INTDIR)\stack.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\system.c

"$(INTDIR)\system.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=tools.c

"$(INTDIR)\tools.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\utility.c

"$(INTDIR)\utility.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=vm.c

"$(INTDIR)\vm.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ficlplatform\win32.c

"$(INTDIR)\win32.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\word.c

"$(INTDIR)\word.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

