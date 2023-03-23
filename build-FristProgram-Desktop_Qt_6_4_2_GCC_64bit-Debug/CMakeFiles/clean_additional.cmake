# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/FristProgram_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/FristProgram_autogen.dir/ParseCache.txt"
  "FristProgram_autogen"
  )
endif()
