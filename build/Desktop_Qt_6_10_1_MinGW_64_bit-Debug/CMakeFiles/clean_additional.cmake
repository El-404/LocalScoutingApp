# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appQtScoutApp_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appQtScoutApp_autogen.dir\\ParseCache.txt"
  "appQtScoutApp_autogen"
  )
endif()
