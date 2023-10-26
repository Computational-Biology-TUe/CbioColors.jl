![tests](https://github.com/Computational-Biology-TUe/CbioColors.jl/actions/workflows/tests.yml/badge.svg?branch=release)

# CbioColors.jl
Julia color schemes for the Cbio group, built on [ColorSchemes.jl](https://github.com/JuliaGraphics/ColorSchemes.jl).

## Installation
The package is registered in the public Computational Biology Julia registry, which can be added using:

```julia
using Pkg
pkg"registry add git@github.com:Computational-Biology-TUe/CbioJulia.git
```

You now have access to the `CbioJulia` package registry. You only have to do this once for a Julia installation.

You can then install the package using:
```julia
pkg"add CbioColors"
```

## Usage

```julia

using CbioColors

# select a custom scheme
scheme = colorschemes[:acacia]

# list available cbio schemes
listcolors()

# you can also use the function from ColorSchemes.jl
findcolorscheme("cbio")
```
