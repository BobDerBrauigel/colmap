# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/content/colmap/build/_deps/faiss-src")
  file(MAKE_DIRECTORY "/content/colmap/build/_deps/faiss-src")
endif()
file(MAKE_DIRECTORY
  "/content/colmap/build/_deps/faiss-build"
  "/content/colmap/build/_deps/faiss-subbuild/faiss-populate-prefix"
  "/content/colmap/build/_deps/faiss-subbuild/faiss-populate-prefix/tmp"
  "/content/colmap/build/_deps/faiss-subbuild/faiss-populate-prefix/src/faiss-populate-stamp"
  "/content/colmap/build/_deps/faiss-subbuild/faiss-populate-prefix/src"
  "/content/colmap/build/_deps/faiss-subbuild/faiss-populate-prefix/src/faiss-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/content/colmap/build/_deps/faiss-subbuild/faiss-populate-prefix/src/faiss-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/content/colmap/build/_deps/faiss-subbuild/faiss-populate-prefix/src/faiss-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
