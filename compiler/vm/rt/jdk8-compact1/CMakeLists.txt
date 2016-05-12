project(jdk8-compact1)

include_directories(
  javavm/export
  native/common
)

add_subdirectory(native)
add_subdirectory(libcore)
add_subdirectory(libnativehelper)
add_subdirectory(external/zlib)

set(ANDROID_OBJECTS
  ${DALVIK_OBJECTS} 
  ${LIBCORE_OBJECTS} 
  ${LIBNATIVEHELPER_OBJECTS} 
  ${EXTERNAL_EXPAT_OBJECTS} 
  ${EXTERNAL_FDLIBM_OBJECTS}
  ${EXTERNAL_ICU4C_OBJECTS}
  ${EXTERNAL_JAVASQLITE_OBJECTS}
  ${EXTERNAL_OPENSSL_OBJECTS}
  ${EXTERNAL_SQLITE_OBJECTS}
  ${EXTERNAL_ZLIB_OBJECTS}
  PARENT_SCOPE
)

