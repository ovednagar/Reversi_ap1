# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /home/oved/Programs/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/oved/Programs/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Reversi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Reversi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Reversi.dir/flags.make

CMakeFiles/Reversi.dir/src/main.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Reversi.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/src/main.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/main.cpp

CMakeFiles/Reversi.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/main.cpp > CMakeFiles/Reversi.dir/src/main.cpp.i

CMakeFiles/Reversi.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/main.cpp -o CMakeFiles/Reversi.dir/src/main.cpp.s

CMakeFiles/Reversi.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/src/main.cpp.o.requires

CMakeFiles/Reversi.dir/src/main.cpp.o.provides: CMakeFiles/Reversi.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/src/main.cpp.o.provides

CMakeFiles/Reversi.dir/src/main.cpp.o.provides.build: CMakeFiles/Reversi.dir/src/main.cpp.o


CMakeFiles/Reversi.dir/src/Board.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/src/Board.cpp.o: ../src/Board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Reversi.dir/src/Board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/src/Board.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Board.cpp

CMakeFiles/Reversi.dir/src/Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/src/Board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Board.cpp > CMakeFiles/Reversi.dir/src/Board.cpp.i

CMakeFiles/Reversi.dir/src/Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/src/Board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Board.cpp -o CMakeFiles/Reversi.dir/src/Board.cpp.s

CMakeFiles/Reversi.dir/src/Board.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/src/Board.cpp.o.requires

CMakeFiles/Reversi.dir/src/Board.cpp.o.provides: CMakeFiles/Reversi.dir/src/Board.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/src/Board.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/src/Board.cpp.o.provides

CMakeFiles/Reversi.dir/src/Board.cpp.o.provides.build: CMakeFiles/Reversi.dir/src/Board.cpp.o


CMakeFiles/Reversi.dir/src/Player.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/src/Player.cpp.o: ../src/Player.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Reversi.dir/src/Player.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/src/Player.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Player.cpp

CMakeFiles/Reversi.dir/src/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/src/Player.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Player.cpp > CMakeFiles/Reversi.dir/src/Player.cpp.i

CMakeFiles/Reversi.dir/src/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/src/Player.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Player.cpp -o CMakeFiles/Reversi.dir/src/Player.cpp.s

CMakeFiles/Reversi.dir/src/Player.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/src/Player.cpp.o.requires

CMakeFiles/Reversi.dir/src/Player.cpp.o.provides: CMakeFiles/Reversi.dir/src/Player.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/src/Player.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/src/Player.cpp.o.provides

CMakeFiles/Reversi.dir/src/Player.cpp.o.provides.build: CMakeFiles/Reversi.dir/src/Player.cpp.o


CMakeFiles/Reversi.dir/src/PlayGround.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/src/PlayGround.cpp.o: ../src/PlayGround.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Reversi.dir/src/PlayGround.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/src/PlayGround.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/PlayGround.cpp

CMakeFiles/Reversi.dir/src/PlayGround.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/src/PlayGround.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/PlayGround.cpp > CMakeFiles/Reversi.dir/src/PlayGround.cpp.i

CMakeFiles/Reversi.dir/src/PlayGround.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/src/PlayGround.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/PlayGround.cpp -o CMakeFiles/Reversi.dir/src/PlayGround.cpp.s

CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.requires

CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.provides: CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.provides

CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.provides.build: CMakeFiles/Reversi.dir/src/PlayGround.cpp.o


CMakeFiles/Reversi.dir/src/Reversi.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/src/Reversi.cpp.o: ../src/Reversi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Reversi.dir/src/Reversi.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/src/Reversi.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Reversi.cpp

CMakeFiles/Reversi.dir/src/Reversi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/src/Reversi.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Reversi.cpp > CMakeFiles/Reversi.dir/src/Reversi.cpp.i

CMakeFiles/Reversi.dir/src/Reversi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/src/Reversi.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/Reversi.cpp -o CMakeFiles/Reversi.dir/src/Reversi.cpp.s

CMakeFiles/Reversi.dir/src/Reversi.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/src/Reversi.cpp.o.requires

CMakeFiles/Reversi.dir/src/Reversi.cpp.o.provides: CMakeFiles/Reversi.dir/src/Reversi.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/src/Reversi.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/src/Reversi.cpp.o.provides

CMakeFiles/Reversi.dir/src/Reversi.cpp.o.provides.build: CMakeFiles/Reversi.dir/src/Reversi.cpp.o


CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o: ../src/ReversiPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/ReversiPlayer.cpp

CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/ReversiPlayer.cpp > CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.i

CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/src/ReversiPlayer.cpp -o CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.s

CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.requires

CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.provides: CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.provides

CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.provides.build: CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o


CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o: ../tests/gtest_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/gtest_main.cpp

CMakeFiles/Reversi.dir/tests/gtest_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/tests/gtest_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/gtest_main.cpp > CMakeFiles/Reversi.dir/tests/gtest_main.cpp.i

CMakeFiles/Reversi.dir/tests/gtest_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/tests/gtest_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/gtest_main.cpp -o CMakeFiles/Reversi.dir/tests/gtest_main.cpp.s

CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.requires

CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.provides: CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.provides

CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.provides.build: CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o


CMakeFiles/Reversi.dir/tests/test_Board.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/tests/test_Board.cpp.o: ../tests/test_Board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Reversi.dir/tests/test_Board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/tests/test_Board.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/test_Board.cpp

CMakeFiles/Reversi.dir/tests/test_Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/tests/test_Board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/test_Board.cpp > CMakeFiles/Reversi.dir/tests/test_Board.cpp.i

CMakeFiles/Reversi.dir/tests/test_Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/tests/test_Board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/test_Board.cpp -o CMakeFiles/Reversi.dir/tests/test_Board.cpp.s

CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.requires

CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.provides: CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.provides

CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.provides.build: CMakeFiles/Reversi.dir/tests/test_Board.cpp.o


CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o: CMakeFiles/Reversi.dir/flags.make
CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o: ../tests/test_ReversiPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o -c /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/test_ReversiPlayer.cpp

CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/test_ReversiPlayer.cpp > CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.i

CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/tests/test_ReversiPlayer.cpp -o CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.s

CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.requires:

.PHONY : CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.requires

CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.provides: CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/Reversi.dir/build.make CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.provides.build
.PHONY : CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.provides

CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.provides.build: CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o


# Object files for target Reversi
Reversi_OBJECTS = \
"CMakeFiles/Reversi.dir/src/main.cpp.o" \
"CMakeFiles/Reversi.dir/src/Board.cpp.o" \
"CMakeFiles/Reversi.dir/src/Player.cpp.o" \
"CMakeFiles/Reversi.dir/src/PlayGround.cpp.o" \
"CMakeFiles/Reversi.dir/src/Reversi.cpp.o" \
"CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o" \
"CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o" \
"CMakeFiles/Reversi.dir/tests/test_Board.cpp.o" \
"CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o"

# External object files for target Reversi
Reversi_EXTERNAL_OBJECTS =

Reversi: CMakeFiles/Reversi.dir/src/main.cpp.o
Reversi: CMakeFiles/Reversi.dir/src/Board.cpp.o
Reversi: CMakeFiles/Reversi.dir/src/Player.cpp.o
Reversi: CMakeFiles/Reversi.dir/src/PlayGround.cpp.o
Reversi: CMakeFiles/Reversi.dir/src/Reversi.cpp.o
Reversi: CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o
Reversi: CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o
Reversi: CMakeFiles/Reversi.dir/tests/test_Board.cpp.o
Reversi: CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o
Reversi: CMakeFiles/Reversi.dir/build.make
Reversi: lib/googletest-master/googlemock/gtest/libgtestd.a
Reversi: lib/googletest-master/googlemock/gtest/libgtest_maind.a
Reversi: lib/googletest-master/googlemock/gtest/libgtestd.a
Reversi: CMakeFiles/Reversi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable Reversi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Reversi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Reversi.dir/build: Reversi

.PHONY : CMakeFiles/Reversi.dir/build

CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/src/main.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/src/Board.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/src/Player.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/src/PlayGround.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/src/Reversi.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/src/ReversiPlayer.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/tests/gtest_main.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/tests/test_Board.cpp.o.requires
CMakeFiles/Reversi.dir/requires: CMakeFiles/Reversi.dir/tests/test_ReversiPlayer.cpp.o.requires

.PHONY : CMakeFiles/Reversi.dir/requires

CMakeFiles/Reversi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Reversi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Reversi.dir/clean

CMakeFiles/Reversi.dir/depend:
	cd /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug /home/oved/CLionProjects/advanced_1/Reversi_ap1/Reversi/cmake-build-debug/CMakeFiles/Reversi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Reversi.dir/depend

