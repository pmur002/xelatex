
library(dvi)
library(latex)
library(xelatex)

dvi <- readDVI(system.file("DVI", "test-xe.xdv", package="dvi"))

grid.dvi(dvi, engine=XeTeXengine)

