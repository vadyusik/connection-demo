# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\codding\programs\CLion 2018.1.6\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\codding\programs\CLion 2018.1.6\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\codding\connection-demo\receiver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\codding\connection-demo\receiver\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\receiver.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\receiver.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\receiver.dir\flags.make

CMakeFiles\receiver.dir\main.cpp.obj: CMakeFiles\receiver.dir\flags.make
CMakeFiles\receiver.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\codding\connection-demo\receiver\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/receiver.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2.0\VC\bin\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\receiver.dir\main.cpp.obj /FdCMakeFiles\receiver.dir\ /FS -c D:\codding\connection-demo\receiver\main.cpp
<<

CMakeFiles\receiver.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/receiver.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2.0\VC\bin\cl.exe > CMakeFiles\receiver.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\codding\connection-demo\receiver\main.cpp
<<

CMakeFiles\receiver.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/receiver.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2.0\VC\bin\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\receiver.dir\main.cpp.s /c D:\codding\connection-demo\receiver\main.cpp
<<

CMakeFiles\receiver.dir\main.cpp.obj.requires:

.PHONY : CMakeFiles\receiver.dir\main.cpp.obj.requires

CMakeFiles\receiver.dir\main.cpp.obj.provides: CMakeFiles\receiver.dir\main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\receiver.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\receiver.dir\main.cpp.obj.provides.build
.PHONY : CMakeFiles\receiver.dir\main.cpp.obj.provides

CMakeFiles\receiver.dir\main.cpp.obj.provides.build: CMakeFiles\receiver.dir\main.cpp.obj


CMakeFiles\receiver.dir\Connector.cpp.obj: CMakeFiles\receiver.dir\flags.make
CMakeFiles\receiver.dir\Connector.cpp.obj: ..\Connector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\codding\connection-demo\receiver\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/receiver.dir/Connector.cpp.obj"
	C:\PROGRA~2\MICROS~2.0\VC\bin\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\receiver.dir\Connector.cpp.obj /FdCMakeFiles\receiver.dir\ /FS -c D:\codding\connection-demo\receiver\Connector.cpp
<<

CMakeFiles\receiver.dir\Connector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/receiver.dir/Connector.cpp.i"
	C:\PROGRA~2\MICROS~2.0\VC\bin\cl.exe > CMakeFiles\receiver.dir\Connector.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\codding\connection-demo\receiver\Connector.cpp
<<

CMakeFiles\receiver.dir\Connector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/receiver.dir/Connector.cpp.s"
	C:\PROGRA~2\MICROS~2.0\VC\bin\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\receiver.dir\Connector.cpp.s /c D:\codding\connection-demo\receiver\Connector.cpp
<<

CMakeFiles\receiver.dir\Connector.cpp.obj.requires:

.PHONY : CMakeFiles\receiver.dir\Connector.cpp.obj.requires

CMakeFiles\receiver.dir\Connector.cpp.obj.provides: CMakeFiles\receiver.dir\Connector.cpp.obj.requires
	$(MAKE) -f CMakeFiles\receiver.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\receiver.dir\Connector.cpp.obj.provides.build
.PHONY : CMakeFiles\receiver.dir\Connector.cpp.obj.provides

CMakeFiles\receiver.dir\Connector.cpp.obj.provides.build: CMakeFiles\receiver.dir\Connector.cpp.obj


# Object files for target receiver
receiver_OBJECTS = \
"CMakeFiles\receiver.dir\main.cpp.obj" \
"CMakeFiles\receiver.dir\Connector.cpp.obj"

# External object files for target receiver
receiver_EXTERNAL_OBJECTS =

receiver.exe: CMakeFiles\receiver.dir\main.cpp.obj
receiver.exe: CMakeFiles\receiver.dir\Connector.cpp.obj
receiver.exe: CMakeFiles\receiver.dir\build.make
receiver.exe: CMakeFiles\receiver.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\codding\connection-demo\receiver\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable receiver.exe"
	"D:\codding\programs\CLion 2018.1.6\bin\cmake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\receiver.dir --manifests  -- C:\PROGRA~2\MICROS~2.0\VC\bin\link.exe /nologo @CMakeFiles\receiver.dir\objects1.rsp @<<
 /out:receiver.exe /implib:receiver.lib /pdb:D:\codding\connection-demo\receiver\cmake-build-debug\receiver.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\receiver.dir\build: receiver.exe

.PHONY : CMakeFiles\receiver.dir\build

CMakeFiles\receiver.dir\requires: CMakeFiles\receiver.dir\main.cpp.obj.requires
CMakeFiles\receiver.dir\requires: CMakeFiles\receiver.dir\Connector.cpp.obj.requires

.PHONY : CMakeFiles\receiver.dir\requires

CMakeFiles\receiver.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\receiver.dir\cmake_clean.cmake
.PHONY : CMakeFiles\receiver.dir\clean

CMakeFiles\receiver.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\codding\connection-demo\receiver D:\codding\connection-demo\receiver D:\codding\connection-demo\receiver\cmake-build-debug D:\codding\connection-demo\receiver\cmake-build-debug D:\codding\connection-demo\receiver\cmake-build-debug\CMakeFiles\receiver.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\receiver.dir\depend

