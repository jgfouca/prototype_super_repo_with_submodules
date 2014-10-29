#include "file_that_depends_on_external.hpp"

#include "prototype_external/dependency.hpp"

#include <iostream>

namespace prototype {

void function_that_depends_on_external()
{
  external::dependency_function();
}

} // namespace prototype
