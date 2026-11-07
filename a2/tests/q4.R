test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(is.ordered(spas$mas), info = "mas should be an ordered factor (ordered = TRUE)")
        testthat::expect_equal(levels(spas$mas), c("0", "1", "1+", "2", "3", "4"), info = "levels of mas: 0, 1, 1+, 2, 3, 4")
      }
    )
  )
)