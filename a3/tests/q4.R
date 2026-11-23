test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(row_split, "initial_split"), info = "row_split should come from initial_split()")
        testthat::expect_equal(nrow(row_train) + nrow(row_test), 119, info = "train + test should be all 119 rows")
      }
    )
  )
)