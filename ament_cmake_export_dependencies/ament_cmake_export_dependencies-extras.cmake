# copied from ament_cmake_export_dependencies/ament_cmake_export_dependencies-extras.cmake

# register ament_package() hook for dependencies once
macro(_ament_cmake_export_dependencies_register_package_hook)
  if(NOT DEFINED _AMENT_CMAKE_EXPORT_DEPENDENCIES_PACKAGE_HOOK_REGISTERED)
    set(_AMENT_CMAKE_EXPORT_DEPENDENCIES_PACKAGE_HOOK_REGISTERED TRUE)

    find_package(ament_cmake_core REQUIRED)
    ament_register_extension("ament_package" "ament_cmake_export_dependencies" "ament_cmake_export_dependencies_package_hook.cmake")
  endif()
endmacro()

include("${ament_cmake_export_dependencies_DIR}/ament_export_dependencies.cmake")