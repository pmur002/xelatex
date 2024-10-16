
XeTeXengine <- TeXengine(name="XeTeX",
                         command="xelatex",
                         options="--no-pdf",
                         xFontDef=xetexFontDef,
                         preamble=xelatexPreamble,
                         dviSuffix=".xdv")

.onLoad <- function(libname, pkgname) {
    initXeTeX()

    registerEngine(XeTeXengine)
}

