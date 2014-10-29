#include "file_that_depends_on_external.hpp"

int main()
{
  prototype::function_that_depends_on_external();

  return 0;
}
