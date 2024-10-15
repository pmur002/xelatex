
XeTeXengine <- TeXengine(name="XeTeX",
                         command="xelatex",
                         options="--no-pdf",
                         buildGrobs=xetexBuildGrobs,
                         preamble=xelatexPreamble,
                         dviSuffix=".xdv")

.onLoad <- function(libname, pkgname) {
    initXeTeX()

    registerEngine(XeTeXengine)
}

