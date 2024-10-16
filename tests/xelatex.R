
library(dvi)
library(latex)
library(xelatex)
library(ttx)

dvi <- readDVI(system.file("DVI", "test-xe.xdv", package="dvi"))

TTX <- FontLibrary(ttxGlyphWidth, ttxGlyphHeight, ttxGlyphBounds)

grid.dvi(dvi, engine=XeTeXengine, fontLib=TTX)

