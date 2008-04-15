#include "lib/config.h"

#ifdef HAVE_MATLAB
#include <mex.h>

//use compatibility mode w/ matlab <7.x
#if !defined(MX_API_VER) || MX_API_VER<0x07040000
#define mwSize INT
#define mwIndex INT

#define mxIsLogicalScalar(x) false
#define mxIsLogicalScalarTrue(x) false
#endif

#endif //HAVE_MATLAB
