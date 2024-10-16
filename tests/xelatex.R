
library(dvi)
library(latex)
library(xelatex)
library(ttx)

dvi <- readDVI(system.file("DVI", "test-xe.xdv", package="dvi"))

## Font file paths based on my machine
if (Sys.getenv("USER") == "pmur002") {

    if (require("ttx")) {
        TTX <- FontLibrary(ttxGlyphWidth, ttxGlyphHeight, ttxGlyphBounds)
        grid.dvi(dvi, engine=XeTeXengine, fontLib=TTX)
    }

}

