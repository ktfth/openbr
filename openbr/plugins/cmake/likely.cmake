set(BR_WITH_LIKELY OFF CACHE BOOL "Build with Likely")

if(${BR_WITH_LIKELY})
  find_package(Likely REQUIRED)
  set(BR_THIRDPARTY_LIBS ${BR_THIRDPARTY_LIBS} ${Likely_LIBS})
else()
  set(BR_EXCLUDED_PLUGINS ${BR_EXCLUDED_PLUGINS} plugins/core/likely.cpp)
  set(BR_EXCLUDED_PLUGINS ${BR_EXCLUDED_PLUGINS} plugins/format/lmat.cpp)
  set(BR_EXCLUDED_PLUGINS ${BR_EXCLUDED_PLUGINS} plugins/gallery/lmat.cpp)
endif()
