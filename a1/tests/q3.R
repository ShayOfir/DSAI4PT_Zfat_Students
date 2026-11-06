test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(is.factor(side_f), info = "side_f should be a factor: use factor(side)")
        testthat::expect_equal(n_left, 3, info = "n_left should be 3 (count the Left values)")
      }
    )
  )
)