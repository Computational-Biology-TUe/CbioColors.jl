![tests](https://github.com/Computational-Biology-TUe/CbioColors.jl/actions/workflows/tests.yml/badge.svg?branch=release)

# CbioColors.jl
Julia color schemes for the Cbio group, built on [ColorSchemes.jl](https://github.com/JuliaGraphics/ColorSchemes.jl).

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
