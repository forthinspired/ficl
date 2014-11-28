# Microsoft Developer Studio Generated NMAKE File, Based on ficlexe.dsp
!IF "$(CFG)" == ""
CFG=ficlexe - Win32 Debug Multithreaded DLL
!MESSAGE No configuration specified. Defaulting to ficlexe - Win32 Debug Multithreaded DLL.
!ENDIF 

!IF "$(CFG)" != "ficlexe - Win32 Release Singlethreaded" && "$(CFG)" != "ficlexe - Win32 Release Multithreaded" && "$(CFG)" != "ficlexe - Win32 Release Multithreaded DLL" && "$(CFG)" != "ficlexe - Win32 Debug Singlethreaded" && "$(CFG)" != "ficlexe - Win32 Debug Multithreaded" && "$(CFG)" != "ficlexe - Win32 Debug Multithreaded DLL"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ficlexe.mak" CFG="ficlexe - Win32 Debug Multithreaded DLL"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ficlexe - Win32 Release Singlethreaded" (based on "Win32 (x86) Console Application")
!MESSAGE "ficlexe - Win32 Release Multithreaded" (based on "Win32 (x86) Console Application")
!MESSAGE "ficlexe - Win32 Release Multithreaded DLL" (based on "Win32 (x86) Console Application")
!MESSAGE "ficlexe - Win32 Debug Singlethreaded" (based on "Win32 (x86) Console Application")
!MESSAGE "ficlexe - Win32 Debug Multithreaded" (based on "Win32 (x86) Console Application")
!MESSAGE "ficlexe - Win32 Debug Multithreaded DLL" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "ficlexe - Win32 Release Singlethreaded"

OUTDIR=.\exe/release/singlethreaded
INTDIR=.\exe/release/singlethreaded
# Begin Custom Macros
OutDir=.\exe/release/singlethreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.exe"

!ELSE 

ALL : "ficllib - Win32 Release Singlethreaded" "$(OUTDIR)\ficl.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Release SinglethreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\ficl.exe"
	-@erase "$(OUTDIR)\ficl.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ficlexe.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficlexe.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/release/singlethreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /machine:I386 /out:"$(OUTDIR)\ficl.exe" 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	".\lib\release\singlethreaded\ficl.lib"

"$(OUTDIR)\ficl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Release Multithreaded"

OUTDIR=.\exe/release/multithreaded
INTDIR=.\exe/release/multithreaded
# Begin Custom Macros
OutDir=.\exe/release/multithreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.exe"

!ELSE 

ALL : "ficllib - Win32 Release Multithreaded" "$(OUTDIR)\ficl.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Release MultithreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\ficl.exe"
	-@erase "$(OUTDIR)\ficl.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ficlexe.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficlexe.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/release/multithreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /machine:I386 /out:"$(OUTDIR)\ficl.exe" 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	".\lib\release\multithreaded\ficl.lib"

"$(OUTDIR)\ficl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Release Multithreaded DLL"

OUTDIR=.\exe/release/multithreaded_dll
INTDIR=.\exe/release/multithreaded_dll
# Begin Custom Macros
OutDir=.\exe/release/multithreaded_dll
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.exe"

!ELSE 

ALL : "ficllib - Win32 Release Multithreaded DLL" "$(OUTDIR)\ficl.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Release Multithreaded DLLCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\ficl.exe"
	-@erase "$(OUTDIR)\ficl.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ficlexe.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficlexe.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/release/multithreaded_dll/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /machine:I386 /out:"$(OUTDIR)\ficl.exe" 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	".\lib\release\multithreaded_dll\ficl.lib"

"$(OUTDIR)\ficl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Debug Singlethreaded"

OUTDIR=.\exe/debug/singlethreaded
INTDIR=.\exe/debug/singlethreaded
# Begin Custom Macros
OutDir=.\exe/debug/singlethreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.exe"

!ELSE 

ALL : "ficllib - Win32 Debug Singlethreaded" "$(OUTDIR)\ficl.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Debug SinglethreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\ficl.exe"
	-@erase "$(OUTDIR)\ficl.ilk"
	-@erase "$(OUTDIR)\ficl.map"
	-@erase "$(OUTDIR)\ficl.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ficlexe.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficlexe.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/debug/singlethreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /debug /machine:I386 /out:"$(OUTDIR)\ficl.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	".\lib\debug\singlethreaded\ficl.lib"

"$(OUTDIR)\ficl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Debug Multithreaded"

OUTDIR=.\exe/debug/multithreaded
INTDIR=.\exe/debug/multithreaded
# Begin Custom Macros
OutDir=.\exe/debug/multithreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.exe"

!ELSE 

ALL : "ficllib - Win32 Debug Multithreaded" "$(OUTDIR)\ficl.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Debug MultithreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\ficl.exe"
	-@erase "$(OUTDIR)\ficl.ilk"
	-@erase "$(OUTDIR)\ficl.map"
	-@erase "$(OUTDIR)\ficl.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ficlexe.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficlexe.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/debug/multithreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /debug /machine:I386 /out:"$(OUTDIR)\ficl.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	".\lib\debug\multithreaded\ficl.lib"

"$(OUTDIR)\ficl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Debug Multithreaded DLL"

OUTDIR=.\exe/debug/multithreaded_dll
INTDIR=.\exe/debug/multithreaded_dll
# Begin Custom Macros
OutDir=.\exe/debug/multithreaded_dll
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.exe"

!ELSE 

ALL : "ficllib - Win32 Debug Multithreaded DLL" "$(OUTDIR)\ficl.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Debug Multithreaded DLLCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\ficl.exe"
	-@erase "$(OUTDIR)\ficl.ilk"
	-@erase "$(OUTDIR)\ficl.map"
	-@erase "$(OUTDIR)\ficl.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\ficlexe.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficlexe.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/debug/multithreaded_dll/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /debug /machine:I386 /out:"$(OUTDIR)\ficl.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	".\lib\debug\multithreaded_dll\ficl.lib"

"$(OUTDIR)\ficl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("ficlexe.dep")
!INCLUDE "ficlexe.dep"
!ELSE 
!MESSAGE Warning: cannot find "ficlexe.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "ficlexe - Win32 Release Singlethreaded" || "$(CFG)" == "ficlexe - Win32 Release Multithreaded" || "$(CFG)" == "ficlexe - Win32 Release Multithreaded DLL" || "$(CFG)" == "ficlexe - Win32 Debug Singlethreaded" || "$(CFG)" == "ficlexe - Win32 Debug Multithreaded" || "$(CFG)" == "ficlexe - Win32 Debug Multithreaded DLL"
SOURCE=.\main.c

"$(INTDIR)\main.obj" : $(SOURCE) "$(INTDIR)"


!IF  "$(CFG)" == "ficlexe - Win32 Release Singlethreaded"

"ficllib - Win32 Release Singlethreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Singlethreaded" 
   cd "."

"ficllib - Win32 Release SinglethreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Singlethreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Release Multithreaded"

"ficllib - Win32 Release Multithreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded" 
   cd "."

"ficllib - Win32 Release MultithreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Release Multithreaded DLL"

"ficllib - Win32 Release Multithreaded DLL" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded DLL" 
   cd "."

"ficllib - Win32 Release Multithreaded DLLCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded DLL" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Debug Singlethreaded"

"ficllib - Win32 Debug Singlethreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Singlethreaded" 
   cd "."

"ficllib - Win32 Debug SinglethreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Singlethreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Debug Multithreaded"

"ficllib - Win32 Debug Multithreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Multithreaded" 
   cd "."

"ficllib - Win32 Debug MultithreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Multithreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficlexe - Win32 Debug Multithreaded DLL"

"ficllib - Win32 Debug Multithreaded DLL" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Multithreaded DLL" 
   cd "."

"ficllib - Win32 Debug Multithreaded DLLCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Multithreaded DLL" RECURSE=1 CLEAN 
   cd "."

!ENDIF 


!ENDIF 

