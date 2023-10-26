module CbioColors

  using Colors
  using ColorSchemes
  import ColorSchemes.colorschemes

  export colorschemes

  # TODO: add named colors like TU/e red etc.
  # const cbiocolors = Dict{Symbol, Color}()

  function addcbiocolorschemes()
    # load the installed schemes
    datadir = joinpath(dirname(@__DIR__), "data")
    include(joinpath(datadir, "acacia.jl"))
    include(joinpath(datadir, "signatures.jl"))

    # create them as constants...
    for key in keys(colorschemes)
      @eval const $key = colorschemes[$(QuoteNode(key))]
    end
  end

  function __init__()
    addcbiocolorschemes()
  end

end