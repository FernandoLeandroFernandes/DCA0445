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
CMAKE_SOURCE_DIR = "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss"

# Include any dependencies generated for this target.
include CMakeFiles/laplgauss.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/laplgauss.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/laplgauss.dir/flags.make

CMakeFiles/laplgauss.dir/laplgauss.cpp.o: CMakeFiles/laplgauss.dir/flags.make
CMakeFiles/laplgauss.dir/laplgauss.cpp.o: laplgauss.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/laplgauss.dir/laplgauss.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/laplgauss.dir/laplgauss.cpp.o -c "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss/laplgauss.cpp"

CMakeFiles/laplgauss.dir/laplgauss.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/laplgauss.dir/laplgauss.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss/laplgauss.cpp" > CMakeFiles/laplgauss.dir/laplgauss.cpp.i

CMakeFiles/laplgauss.dir/laplgauss.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/laplgauss.dir/laplgauss.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss/laplgauss.cpp" -o CMakeFiles/laplgauss.dir/laplgauss.cpp.s

CMakeFiles/laplgauss.dir/laplgauss.cpp.o.requires:

.PHONY : CMakeFiles/laplgauss.dir/laplgauss.cpp.o.requires

CMakeFiles/laplgauss.dir/laplgauss.cpp.o.provides: CMakeFiles/laplgauss.dir/laplgauss.cpp.o.requires
	$(MAKE) -f CMakeFiles/laplgauss.dir/build.make CMakeFiles/laplgauss.dir/laplgauss.cpp.o.provides.build
.PHONY : CMakeFiles/laplgauss.dir/laplgauss.cpp.o.provides

CMakeFiles/laplgauss.dir/laplgauss.cpp.o.provides.build: CMakeFiles/laplgauss.dir/laplgauss.cpp.o


# Object files for target laplgauss
laplgauss_OBJECTS = \
"CMakeFiles/laplgauss.dir/laplgauss.cpp.o"

# External object files for target laplgauss
laplgauss_EXTERNAL_OBJECTS =

laplgauss: CMakeFiles/laplgauss.dir/laplgauss.cpp.o
laplgauss: CMakeFiles/laplgauss.dir/build.make
laplgauss: /usr/local/lib/libopencv_videostab.so.2.4.13
laplgauss: /usr/local/lib/libopencv_ts.a
laplgauss: /usr/local/lib/libopencv_superres.so.2.4.13
laplgauss: /usr/local/lib/libopencv_stitching.so.2.4.13
laplgauss: /usr/local/lib/libopencv_contrib.so.2.4.13
laplgauss: /usr/lib/x86_64-linux-gnu/libGLU.so
laplgauss: /usr/lib/x86_64-linux-gnu/libGL.so
laplgauss: /usr/local/lib/libopencv_nonfree.so.2.4.13
laplgauss: /usr/local/lib/libopencv_ocl.so.2.4.13
laplgauss: /usr/local/lib/libopencv_gpu.so.2.4.13
laplgauss: /usr/local/lib/libopencv_photo.so.2.4.13
laplgauss: /usr/local/lib/libopencv_objdetect.so.2.4.13
laplgauss: /usr/local/lib/libopencv_legacy.so.2.4.13
laplgauss: /usr/local/lib/libopencv_video.so.2.4.13
laplgauss: /usr/local/lib/libopencv_ml.so.2.4.13
laplgauss: /usr/local/lib/libopencv_calib3d.so.2.4.13
laplgauss: /usr/local/lib/libopencv_features2d.so.2.4.13
laplgauss: /usr/local/lib/libopencv_highgui.so.2.4.13
laplgauss: /usr/local/lib/libopencv_imgproc.so.2.4.13
laplgauss: /usr/local/lib/libopencv_flann.so.2.4.13
laplgauss: /usr/local/lib/libopencv_core.so.2.4.13
laplgauss: CMakeFiles/laplgauss.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable laplgauss"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/laplgauss.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/laplgauss.dir/build: laplgauss

.PHONY : CMakeFiles/laplgauss.dir/build

CMakeFiles/laplgauss.dir/requires: CMakeFiles/laplgauss.dir/laplgauss.cpp.o.requires

.PHONY : CMakeFiles/laplgauss.dir/requires

CMakeFiles/laplgauss.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/laplgauss.dir/cmake_clean.cmake
.PHONY : CMakeFiles/laplgauss.dir/clean

CMakeFiles/laplgauss.dir/depend:
	cd "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss" "/media/fernando/FILES/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/laplgauss/CMakeFiles/laplgauss.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/laplgauss.dir/depend
