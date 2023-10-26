using Test, CbioColors

spekkie = colorschemes[:spekkie]

@testset "basic tests" begin
  @test length(spekkie) == 5
  @test length(spekkie.colors) == 5
  # test that sampling schemes yield different values
  @inferred get(spekkie, 0.0)
  @test get(spekkie, 0.0) != get(spekkie, 0.5)
  @test spekkie[end] ≈ spekkie[1.0]
  
  # test that searching works
  @test length(findcolorscheme("cbio")) > 0
  @test listcolors() == findcolorscheme("cbio")
end