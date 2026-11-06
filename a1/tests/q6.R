test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(exists("mean_fma"), info = "mean_fma does not exist: the cell still has an error. Read the message: which object was not found?")
        testthat::expect_equal(mean_fma, 44)
      }
    )
  )
)