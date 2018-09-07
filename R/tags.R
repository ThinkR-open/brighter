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

#' Hide or display a tag
#'
#' @param tag the tag
#'
#' @return a tag
#' @export
#
#' @importFrom htmltools tagList
#'
#' @examples
#' a <- tags$p(src = "plop", "pouet")
#' undisplay(a)
#'
#' @rdname display

undisplay <- function(tag){
  tags$span(
    style = "display: none;",
    tag
  )
}

#' @rdname display
#' @importFrom htmltools tagList

display <- function(tag){
  if ( grepl("display: none;", b$attribs$style) ){
    tagList(tag$children)
  } else {
    tag
  }

}
