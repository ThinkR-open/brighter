#' Turn an R list into an HTML list
#'
#' @param list An R list
#'
#' @return an HTML list
#' @export
#'
#' @importFrom htmltools tags tagAppendAttributes tagList
#'
#' @rdname lists
#'
#' @examples
#' list_to_li(c("a","b"))

list_to_li <- function(list, class = NULL){
  if (is.null(class)){
    tagList(lapply(list, tags$li))
  } else {
    res <- lapply(list, tags$li)
    res <- lapply(res, function(x) tagAppendAttributes(x, class = class))
    tagList(res)
  }

}

#' @export
#' @rdname lists
#' @importFrom htmltools tags tagAppendAttributes tagList

list_to_p <- function(list, class = NULL){
  if (is.null(class)){
    tagList(lapply(list, tags$p))
  } else {
    res <- lapply(list, tags$p)
    res <- lapply(res, function(x) tagAppendAttributes(x, class = class))
    tagList(res)
  }

}

#' @export
#' @rdname lists
#' @importFrom glue glue
#' @importFrom htmltools tags tagAppendAttributes tagList


named_to_li <- function(list, class = NULL){
  if(is.null(class)){
    res <- mapply(
      function(x, y){
        tags$li(HTML(glue("<b>{y}:</b> {x}")))
      },
      list, names(list), SIMPLIFY = FALSE)
    #res <- lapply(res, HTML)
    tagList(res)
  } else {
    res <- mapply(
      function(x, y){
        tags$li(HTML(glue("<b>{y}:</b> {x}")))
      },
      list, names(list), SIMPLIFY = FALSE)
    res <- lapply(res, function(x) tagAppendAttributes(x, class = class))
    tagList(res)
  }
}
