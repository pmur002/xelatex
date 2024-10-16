
identical_font <- function(op1, op2) {
    identical(blockValue(op1$blocks$op.opcode),
              blockValue(op2$blocks$op.opcode)) &&
    identical(blockValue(op1$blocks$op.opparams.fontinfo.marker.fontname.block),
              blockValue(op2$blocks$op.opparams.fontinfo.marker.fontname.block)) &&
    identical(blockValue(op1$blocks$op.opparams.fontinfo.marker.fontindex),
              blockValue(op2$blocks$op.opparams.fontinfo.marker.fontindex)) &&
    identical(blockValue(op1$blocks$op.opparams.ptsize),
              blockValue(op2$blocks$op.opparams.ptsize))
}
