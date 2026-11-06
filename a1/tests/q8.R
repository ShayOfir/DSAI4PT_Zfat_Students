test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(exists("fma_plus_5"), info = "fma_plus_5 does not exist: the cell still has an error. Hint: text cannot be added to a number, convert it first")
        testthat::expect_equal(fma_plus_5, 50)
      }
    )
  )
)