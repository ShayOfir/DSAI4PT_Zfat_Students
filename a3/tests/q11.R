test = list(
  name = "q11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(res_age, "tune_results") && inherits(res_ii_age, "tune_results"), info = "res_age and res_ii_age should come from fit_resamples()")
        testthat::expect_true(is.numeric(cv_auc_age) && length(cv_auc_age) == 1 && is.numeric(cv_auc_ii_age) && length(cv_auc_ii_age) == 1)
      }
    )
  )
)