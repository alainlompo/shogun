%{
#include "features/SimpleFeatures.h"
#include "features/IntFeatures.h"
%}

%include "lib/swig_typemaps.i"

#ifdef HAVE_PYTHON
%feature("autodoc", "get_fm(self) -> numpy 1dim array of float") get_fm;
#endif

%apply (INT* IN_ARRAY2, INT DIM1, INT DIM2) {(INT* src, INT num_feat, INT num_vec)};
%apply (INT** ARGOUT2, INT* DIM1, INT* DIM2) {(INT** dst, INT* d1, INT* d2)};

%include "features/SimpleFeatures.i"
%include "features/IntFeatures.h"

#ifdef HAVE_PYTHON
%pythoncode %{
  class IntFeatures(CIntFeatures):
     def __init__(self,p1):
        CIntFeatures.__init__(self,0)
        self.copy_feature_matrix(p1)
%}
#endif
