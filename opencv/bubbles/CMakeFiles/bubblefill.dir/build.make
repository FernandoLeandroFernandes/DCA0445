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
CMAKE_SOURCE_DIR = "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles"

# Include any dependencies generated for this target.
include CMakeFiles/bubblefill.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bubblefill.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bubblefill.dir/flags.make

CMakeFiles/bubblefill.dir/bubblefill.cpp.o: CMakeFiles/bubblefill.dir/flags.make
CMakeFiles/bubblefill.dir/bubblefill.cpp.o: bubblefill.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bubblefill.dir/bubblefill.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bubblefill.dir/bubblefill.cpp.o -c "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles/bubblefill.cpp"

CMakeFiles/bubblefill.dir/bubblefill.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bubblefill.dir/bubblefill.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles/bubblefill.cpp" > CMakeFiles/bubblefill.dir/bubblefill.cpp.i

CMakeFiles/bubblefill.dir/bubblefill.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bubblefill.dir/bubblefill.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles/bubblefill.cpp" -o CMakeFiles/bubblefill.dir/bubblefill.cpp.s

CMakeFiles/bubblefill.dir/bubblefill.cpp.o.requires:

.PHONY : CMakeFiles/bubblefill.dir/bubblefill.cpp.o.requires

CMakeFiles/bubblefill.dir/bubblefill.cpp.o.provides: CMakeFiles/bubblefill.dir/bubblefill.cpp.o.requires
	$(MAKE) -f CMakeFiles/bubblefill.dir/build.make CMakeFiles/bubblefill.dir/bubblefill.cpp.o.provides.build
.PHONY : CMakeFiles/bubblefill.dir/bubblefill.cpp.o.provides

CMakeFiles/bubblefill.dir/bubblefill.cpp.o.provides.build: CMakeFiles/bubblefill.dir/bubblefill.cpp.o


# Object files for target bubblefill
bubblefill_OBJECTS = \
"CMakeFiles/bubblefill.dir/bubblefill.cpp.o"

# External object files for target bubblefill
bubblefill_EXTERNAL_OBJECTS =

bubblefill: CMakeFiles/bubblefill.dir/bubblefill.cpp.o
bubblefill: CMakeFiles/bubblefill.dir/build.make
bubblefill: /usr/local/lib/libopencv_videostab.so.2.4.9
bubblefill: /usr/local/lib/libopencv_ts.a
bubblefill: /usr/local/lib/libopencv_superres.so.2.4.9
bubblefill: /usr/local/lib/libopencv_stitching.so.2.4.9
bubblefill: /usr/local/lib/libopencv_contrib.so.2.4.9
bubblefill: /usr/local/lib/libopencv_nonfree.so.2.4.9
bubblefill: /usr/local/lib/libopencv_ocl.so.2.4.9
bubblefill: /usr/local/lib/libopencv_gpu.so.2.4.9
bubblefill: /usr/local/lib/libopencv_photo.so.2.4.9
bubblefill: /usr/local/lib/libopencv_objdetect.so.2.4.9
bubblefill: /usr/local/lib/libopencv_legacy.so.2.4.9
bubblefill: /usr/local/lib/libopencv_video.so.2.4.9
bubblefill: /usr/local/lib/libopencv_ml.so.2.4.9
bubblefill: /usr/local/lib/libopencv_calib3d.so.2.4.9
bubblefill: /usr/local/lib/libopencv_features2d.so.2.4.9
bubblefill: /usr/local/lib/libopencv_highgui.so.2.4.9
bubblefill: /usr/local/lib/libopencv_imgproc.so.2.4.9
bubblefill: /usr/local/lib/libopencv_flann.so.2.4.9
bubblefill: /usr/local/lib/libopencv_core.so.2.4.9
bubblefill: CMakeFiles/bubblefill.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bubblefill"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bubblefill.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bubblefill.dir/build: bubblefill

.PHONY : CMakeFiles/bubblefill.dir/build

CMakeFiles/bubblefill.dir/requires: CMakeFiles/bubblefill.dir/bubblefill.cpp.o.requires

.PHONY : CMakeFiles/bubblefill.dir/requires

CMakeFiles/bubblefill.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bubblefill.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bubblefill.dir/clean

CMakeFiles/bubblefill.dir/depend:
	cd "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles" "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles" "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles" "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles" "/home/fernando/Dropbox/UFRN/2016.2/DCA0445 - PROCESSAMENTO DIGITAL DE IMAGENS/opencv/bubbles/CMakeFiles/bubblefill.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/bubblefill.dir/depend

