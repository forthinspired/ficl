# Microsoft Developer Studio Generated NMAKE File, Based on ficldll.dsp
!IF "$(CFG)" == ""
CFG=ficldll - Win32 Debug Multithreaded DLL
!MESSAGE No configuration specified. Defaulting to ficldll - Win32 Debug Multithreaded DLL.
!ENDIF 

!IF "$(CFG)" != "ficldll - Win32 Release Singlethreaded" && "$(CFG)" != "ficldll - Win32 Release Multithreaded" && "$(CFG)" != "ficldll - Win32 Release Multithreaded DLL" && "$(CFG)" != "ficldll - Win32 Debug Singlethreaded" && "$(CFG)" != "ficldll - Win32 Debug Multithreaded" && "$(CFG)" != "ficldll - Win32 Debug Multithreaded DLL"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ficldll.mak" CFG="ficldll - Win32 Debug Multithreaded DLL"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ficldll - Win32 Release Singlethreaded" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ficldll - Win32 Release Multithreaded" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ficldll - Win32 Release Multithreaded DLL" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ficldll - Win32 Debug Singlethreaded" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ficldll - Win32 Debug Multithreaded" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ficldll - Win32 Debug Multithreaded DLL" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "ficldll - Win32 Release Singlethreaded"

OUTDIR=.\dll/release/singlethreaded
INTDIR=.\dll/release/singlethreaded
# Begin Custom Macros
OutDir=.\dll/release/singlethreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.dll"

!ELSE 

ALL : "ficllib - Win32 Release Singlethreaded" "$(OUTDIR)\ficl.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Release SinglethreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(OUTDIR)\ficl.dll"
	-@erase "$(OUTDIR)\ficl.exp"
	-@erase "$(OUTDIR)\ficl.lib"
	-@erase "$(OUTDIR)\ficl.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FICLDLL_EXPORTS" /Fp"$(INTDIR)\ficldll.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficldll.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/release/singlethreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /machine:I386 /def:".\ficldll.def" /out:"$(OUTDIR)\ficl.dll" /implib:"$(OUTDIR)\ficl.lib" 
DEF_FILE= \
	".\ficldll.def"
LINK32_OBJS= \
	".\lib\release\singlethreaded\ficl.lib"

"$(OUTDIR)\ficl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficldll - Win32 Release Multithreaded"

OUTDIR=.\dll/release/multithreaded
INTDIR=.\dll/release/multithreaded
# Begin Custom Macros
OutDir=.\dll/release/multithreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.dll"

!ELSE 

ALL : "ficllib - Win32 Release Multithreaded" "$(OUTDIR)\ficl.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Release MultithreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(OUTDIR)\ficl.dll"
	-@erase "$(OUTDIR)\ficl.exp"
	-@erase "$(OUTDIR)\ficl.lib"
	-@erase "$(OUTDIR)\ficl.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FICLDLL_EXPORTS" /Fp"$(INTDIR)\ficldll.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficldll.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/release/multithreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /machine:I386 /def:".\ficldll.def" /out:"$(OUTDIR)\ficl.dll" /implib:"$(OUTDIR)\ficl.lib" 
DEF_FILE= \
	".\ficldll.def"
LINK32_OBJS= \
	".\lib\release\multithreaded\ficl.lib"

"$(OUTDIR)\ficl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficldll - Win32 Release Multithreaded DLL"

OUTDIR=.\dll/release/multithreaded_dll
INTDIR=.\dll/release/multithreaded_dll
# Begin Custom Macros
OutDir=.\dll/release/multithreaded_dll
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.dll"

!ELSE 

ALL : "ficllib - Win32 Release Multithreaded DLL" "$(OUTDIR)\ficl.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Release Multithreaded DLLCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(OUTDIR)\ficl.dll"
	-@erase "$(OUTDIR)\ficl.exp"
	-@erase "$(OUTDIR)\ficl.lib"
	-@erase "$(OUTDIR)\ficl.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FICLDLL_EXPORTS" /Fp"$(INTDIR)\ficldll.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficldll.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/release/multithreaded_dll/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /machine:I386 /def:".\ficldll.def" /out:"$(OUTDIR)\ficl.dll" /implib:"$(OUTDIR)\ficl.lib" 
DEF_FILE= \
	".\ficldll.def"
LINK32_OBJS= \
	".\lib\release\multithreaded_dll\ficl.lib"

"$(OUTDIR)\ficl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficldll - Win32 Debug Singlethreaded"

OUTDIR=.\dll/debug/singlethreaded
INTDIR=.\dll/debug/singlethreaded
# Begin Custom Macros
OutDir=.\dll/debug/singlethreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.dll"

!ELSE 

ALL : "ficllib - Win32 Debug Singlethreaded" "$(OUTDIR)\ficl.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Debug SinglethreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(OUTDIR)\ficl.dll"
	-@erase "$(OUTDIR)\ficl.exp"
	-@erase "$(OUTDIR)\ficl.ilk"
	-@erase "$(OUTDIR)\ficl.lib"
	-@erase "$(OUTDIR)\ficl.map"
	-@erase "$(OUTDIR)\ficl.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FICLDLL_EXPORTS" /Fp"$(INTDIR)\ficldll.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficldll.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/debug/singlethreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /debug /machine:I386 /def:".\ficldll.def" /out:"$(OUTDIR)\ficl.dll" /implib:"$(OUTDIR)\ficl.lib" /pdbtype:sept 
DEF_FILE= \
	".\ficldll.def"
LINK32_OBJS= \
	".\lib\debug\singlethreaded\ficl.lib"

"$(OUTDIR)\ficl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficldll - Win32 Debug Multithreaded"

OUTDIR=.\dll/debug/multithreaded
INTDIR=.\dll/debug/multithreaded
# Begin Custom Macros
OutDir=.\dll/debug/multithreaded
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.dll"

!ELSE 

ALL : "ficllib - Win32 Debug Multithreaded" "$(OUTDIR)\ficl.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Debug MultithreadedCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(OUTDIR)\ficl.dll"
	-@erase "$(OUTDIR)\ficl.exp"
	-@erase "$(OUTDIR)\ficl.ilk"
	-@erase "$(OUTDIR)\ficl.lib"
	-@erase "$(OUTDIR)\ficl.map"
	-@erase "$(OUTDIR)\ficl.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FICLDLL_EXPORTS" /Fp"$(INTDIR)\ficldll.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficldll.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/debug/multithreaded/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /debug /machine:I386 /def:".\ficldll.def" /out:"$(OUTDIR)\ficl.dll" /implib:"$(OUTDIR)\ficl.lib" /pdbtype:sept 
DEF_FILE= \
	".\ficldll.def"
LINK32_OBJS= \
	".\lib\debug\multithreaded\ficl.lib"

"$(OUTDIR)\ficl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ficldll - Win32 Debug Multithreaded DLL"

OUTDIR=.\dll/debug/multithreaded_dll
INTDIR=.\dll/debug/multithreaded_dll
# Begin Custom Macros
OutDir=.\dll/debug/multithreaded_dll
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ficl.dll"

!ELSE 

ALL : "ficllib - Win32 Debug Multithreaded DLL" "$(OUTDIR)\ficl.dll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"ficllib - Win32 Debug Multithreaded DLLCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(OUTDIR)\ficl.dll"
	-@erase "$(OUTDIR)\ficl.exp"
	-@erase "$(OUTDIR)\ficl.ilk"
	-@erase "$(OUTDIR)\ficl.lib"
	-@erase "$(OUTDIR)\ficl.map"
	-@erase "$(OUTDIR)\ficl.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "FICLDLL_EXPORTS" /Fp"$(INTDIR)\ficldll.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ficldll.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=lib/debug/multithreaded_dll/ficl.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\ficl.pdb" /map:"$(INTDIR)\ficl.map" /debug /machine:I386 /def:".\ficldll.def" /out:"$(OUTDIR)\ficl.dll" /implib:"$(OUTDIR)\ficl.lib" /pdbtype:sept 
DEF_FILE= \
	".\ficldll.def"
LINK32_OBJS= \
	".\lib\debug\multithreaded_dll\ficl.lib"

"$(OUTDIR)\ficl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("ficldll.dep")
!INCLUDE "ficldll.dep"
!ELSE 
!MESSAGE Warning: cannot find "ficldll.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "ficldll - Win32 Release Singlethreaded" || "$(CFG)" == "ficldll - Win32 Release Multithreaded" || "$(CFG)" == "ficldll - Win32 Release Multithreaded DLL" || "$(CFG)" == "ficldll - Win32 Debug Singlethreaded" || "$(CFG)" == "ficldll - Win32 Debug Multithreaded" || "$(CFG)" == "ficldll - Win32 Debug Multithreaded DLL"

!IF  "$(CFG)" == "ficldll - Win32 Release Singlethreaded"

"ficllib - Win32 Release Singlethreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Singlethreaded" 
   cd "."

"ficllib - Win32 Release SinglethreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Singlethreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficldll - Win32 Release Multithreaded"

"ficllib - Win32 Release Multithreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded" 
   cd "."

"ficllib - Win32 Release MultithreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficldll - Win32 Release Multithreaded DLL"

"ficllib - Win32 Release Multithreaded DLL" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded DLL" 
   cd "."

"ficllib - Win32 Release Multithreaded DLLCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Release Multithreaded DLL" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficldll - Win32 Debug Singlethreaded"

"ficllib - Win32 Debug Singlethreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Singlethreaded" 
   cd "."

"ficllib - Win32 Debug SinglethreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Singlethreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficldll - Win32 Debug Multithreaded"

"ficllib - Win32 Debug Multithreaded" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Multithreaded" 
   cd "."

"ficllib - Win32 Debug MultithreadedCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F ".\ficllib.mak" CFG="ficllib - Win32 Debug Multithreaded" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "ficldll - Win32 Debug Multithreaded DLL"

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

