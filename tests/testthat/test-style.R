context("test-style")

test_that("style works", {
  expect_is(
    with_red_star("Plop"),
    "shiny.tag"
    )
})
