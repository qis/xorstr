if(NOT TARGET xorstr)
  add_library(xorstr INTERFACE IMPORTED)
  set_target_properties(xorstr PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/include")
endif()
