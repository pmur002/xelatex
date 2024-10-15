
xetex_state <- new.env()

get <- function(name) {
    base::get0(name, envir=xetex_state, inherits=FALSE)
}

mget <- function(names) {
    base::mget(names, envir=xetex_state, inherits=FALSE)
}

set <- function(name, value) {
    assign(name, value, envir=xetex_state)
}




