%module(docstring="Wrapper of Openbsd idgen32 function") rlibidgen32
%{
#include "idgen.h"
%}

%apply unsigned int {u_int32_t};

%feature("autodoc", "3");

%include "typemaps.i"
%include "idgen.h"