
################################################################################
## Package initialisation
packageInit <- function(pkgs) {
    lapply(pkgs,
           function(x) {
               if (!is.null(x$init))
                   x$init()
           })
}

################################################################################
## Call package specials
packageSpecial <- function(pkgs, special) {
    lapply(pkgs,
           function(x) {
               if (!is.null(x$special))
                   x$special(special)
           })
}

################################################################################
## Call package finals
packageFinal <- function(pkgs) {
    lapply(pkgs,
           function(x) {
               if (!is.null(x$final))
                   x$final()
           })
}

