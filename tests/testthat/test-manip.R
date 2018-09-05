context("test-manip")

test_that("manip works", {
  expect_is(list_to_li(c("a","b")), "shiny.tag.list")
  expect_is(list_to_li(c("a","b")), "list")

  expect_is(list_to_p(c("a","b")), "shiny.tag.list")
  expect_is(list_to_p(c("a","b")), "list")

  pouet <- c("One", "two", "three")
  names(pouet) <- c("a", "b", "c")
  expect_is(named_to_li(pouet), "shiny.tag.list")
  expect_is(named_to_li(pouet), "list")


})
