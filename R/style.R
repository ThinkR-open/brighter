#' Add a red star at the end of the text
#'
#' Adds a red star at the end of the text
#' (for example for indicating mandatory fields).
#'
#' @param text the HTLM text to put before the red star
#'
#' @return an html element
#' @export
#'
#' @examples
#' with_red_star("Enter your name here")
#'
#' @importFrom htmltools tags HTML
#'
with_red_star <- function(text) {
  htmltools::tags$span(
    HTML(
      paste0(
        text,
        htmltools::tags$span(
          style = "color:red", "*"
        )
      )
    )
  )
}



#' Repeat tags$br
#'
#' @param times the number of br to return
#'
#' @return the number of br specified in times
#' @export
#'
#' @examples
#' rep_br(5)
#'
#' @importFrom htmltools HTML

rep_br <- function(times = 1) {
  HTML(rep("<br/>", times = times))
}

#' Create an url
#'
#' @param url the URL
#' @param text the text to display
#'
#' @return an a tag
#' @export
#'
#' @examples
#' enurl("https://www.thinkr.fr", "ThinkR")

enurl <- function(url, text){
  tags$a(href = url, text)
}
