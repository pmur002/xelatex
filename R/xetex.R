
initXeTeX <- function() {
    xetex <- Sys.which("xelatex")
    if (nchar(xetex) == 0) {
        stop("xetex not found; this package will not work until xetex in installed")
    } else {
        versText <- system("xelatex --version", intern=TRUE)
        versLine <- grep("^XeTeX", versText)
        version <- gsub(".+ ([0-9.-]+) .+", "\\1", versText[versLine])
        packageStartupMessage(paste0("XeTeX:  ", version))
        set("xetexVersion", version)
    }
}

xetexVersion <- function() {
    get("xetexVersion")
}

xetexAvailable <- function() {
    !is.null(xetexVersion())
}

