
initTeXstate <- function() {
    state <- TeXstate()
    TeXset("scale", 1, state)
    ## Extra slot for dummy font
    TeXset("fonts", vector("list", 256), state)
    TeXset("glyphs", list(), state)
    TeXset("dir", 0, state)
    state
}

## 'x' is a "DVIgrob" from {latex}
xetexBuildGrobs <- function(x) {
    state <- initTeXstate()
    TeXset("packages", x$packages, state)
    TeXset("fontLib", x$fontLib, state)
    ## Generate objs from DVI
    invisible(lapply(x$dvi, DVItoObj, state))
    
    textGrob("Expect more ...")
}
