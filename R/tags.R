#' Remove a tag attribute
#'
#' @param tag the tag
#' @param ... the attributes to remove
#'
#' @return a new tag
#' @export
#'
#' @examples
#' a <- tags$p(src = "plop", "pouet")
#' tagRemoveAttributes(a, "src")

tagRemoveAttributes <- function(tag, ...){
  attrs <- as.character(list(...))
  for (i in seq_along(attrs)){
    tag$attribs[[ attrs[i] ]] <- NULL
  }
  tag
}
