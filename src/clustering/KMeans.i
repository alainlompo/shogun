%{
    #include "clustering/KMeans.h"
%}

%include "lib/swig_typemaps.i"

#ifdef HAVE_PYTHON
%feature("autodoc", "get_radi(self) -> numpy 1dim array of float") get_radi;
%feature("autodoc", "get_centers(self) -> numpy 2dim array of float") get_centers;
#endif

%apply (DREAL** ARGOUT1, INT* DIM1) {(DREAL** radii, INT* num)};
%apply (DREAL** ARGOUT2, INT* DIM1, INT* DIM2) {(DREAL** centers, INT* dim, INT* num)};

%rename(KMeans) CKMeans;

%include "clustering/KMeans.h"

