# SET(CCTAG_BUILD_TYPE "Release")
SET(CCTAG_BUILD_TYPE "Debug")

STRING( TOUPPER "${CCTAG_BUILD_TYPE}" CCTAG_BUILD_MODE )

IF(DEFINED CCTAG_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE ${CCTAG_BUILD_TYPE})
ELSE(DEFINED CCTAG_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE Debug)
ENDIF(DEFINED CCTAG_BUILD_TYPE)
MESSAGE(STATUS "using built type ${CMAKE_BUILD_TYPE}")

set(CMAKE_CXX_FLAGS_DEBUG   "${CMAKE_CXX_FLAGS_DEBUG}   -DTHIS_IS_DEBUG_MODE")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DTHIS_IS_RELEASE_MODE")

set(USE_CUDA false)
