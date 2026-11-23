test = list(
  name = "q10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(res_full, "tune_results"), info = "res_full should come from fit_resamples()")
        testthat::expect_true(inherits(rec_full, "recipe"))
      }
    )
  )
)