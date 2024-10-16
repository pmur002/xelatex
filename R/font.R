
xetexFontDef <- function(op, state) {
    fontnameChars <-
        blockValue(op$blocks$op.opparams.fontinfo.marker.fontname.block)
    fontname <- paste(fontnameChars, collapse="")
    fontindex <- blockValue(op$blocks$op.opparams.fontinfo.marker.fontindex)
    fontsize <- blockValue(op$block$op.opparams.ptsize)
    list(name=fontname, index=fontindex, size=fontsize)
}
