# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui"

# Include any dependencies generated for this target.
include CMakeFiles/highgui.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/highgui.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/highgui.dir/flags.make

CMakeFiles/highgui.dir/highgui.cpp.o: CMakeFiles/highgui.dir/flags.make
CMakeFiles/highgui.dir/highgui.cpp.o: highgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/highgui.dir/highgui.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/highgui.dir/highgui.cpp.o -c "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui/highgui.cpp"

CMakeFiles/highgui.dir/highgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/highgui.dir/highgui.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui/highgui.cpp" > CMakeFiles/highgui.dir/highgui.cpp.i

CMakeFiles/highgui.dir/highgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/highgui.dir/highgui.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui/highgui.cpp" -o CMakeFiles/highgui.dir/highgui.cpp.s

CMakeFiles/highgui.dir/highgui.cpp.o.requires:

.PHONY : CMakeFiles/highgui.dir/highgui.cpp.o.requires

CMakeFiles/highgui.dir/highgui.cpp.o.provides: CMakeFiles/highgui.dir/highgui.cpp.o.requires
	$(MAKE) -f CMakeFiles/highgui.dir/build.make CMakeFiles/highgui.dir/highgui.cpp.o.provides.build
.PHONY : CMakeFiles/highgui.dir/highgui.cpp.o.provides

CMakeFiles/highgui.dir/highgui.cpp.o.provides.build: CMakeFiles/highgui.dir/highgui.cpp.o


# Object files for target highgui
highgui_OBJECTS = \
"CMakeFiles/highgui.dir/highgui.cpp.o"

# External object files for target highgui
highgui_EXTERNAL_OBJECTS =

highgui: CMakeFiles/highgui.dir/highgui.cpp.o
highgui: CMakeFiles/highgui.dir/build.make
highgui: /usr/local/lib/libopencv_videostab.so.2.4.13
highgui: /usr/local/lib/libopencv_ts.a
highgui: /usr/local/lib/libopencv_superres.so.2.4.13
highgui: /usr/local/lib/libopencv_stitching.so.2.4.13
highgui: /usr/local/lib/libopencv_contrib.so.2.4.13
highgui: /usr/lib/x86_64-linux-gnu/libGLU.so
highgui: /usr/lib/x86_64-linux-gnu/libGL.so
highgui: /usr/local/lib/libopencv_nonfree.so.2.4.13
highgui: /usr/local/lib/libopencv_ocl.so.2.4.13
highgui: /usr/local/lib/libopencv_gpu.so.2.4.13
highgui: /usr/local/lib/libopencv_photo.so.2.4.13
highgui: /usr/local/lib/libopencv_objdetect.so.2.4.13
highgui: /usr/local/lib/libopencv_legacy.so.2.4.13
highgui: /usr/local/lib/libopencv_video.so.2.4.13
highgui: /usr/local/lib/libopencv_ml.so.2.4.13
highgui: /usr/local/lib/libopencv_calib3d.so.2.4.13
highgui: /usr/local/lib/libopencv_features2d.so.2.4.13
highgui: /usr/local/lib/libopencv_highgui.so.2.4.13
highgui: /usr/local/lib/libopencv_imgproc.so.2.4.13
highgui: /usr/local/lib/libopencv_flann.so.2.4.13
highgui: /usr/local/lib/libopencv_core.so.2.4.13
highgui: CMakeFiles/highgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable highgui"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/highgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/highgui.dir/build: highgui

.PHONY : CMakeFiles/highgui.dir/build

CMakeFiles/highgui.dir/requires: CMakeFiles/highgui.dir/highgui.cpp.o.requires

.PHONY : CMakeFiles/highgui.dir/requires

CMakeFiles/highgui.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/highgui.dir/cmake_clean.cmake
.PHONY : CMakeFiles/highgui.dir/clean

CMakeFiles/highgui.dir/depend:
	cd "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/tests/highgui/CMakeFiles/highgui.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/highgui.dir/depend

