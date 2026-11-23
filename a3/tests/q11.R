test = list(
  name = "q11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(final_fit, "tune_results"), info = "final_fit should come from last_fit()")
        testthat::expect_true(inherits(cm, "conf_mat") && all(dim(cm$table) == c(2, 2)), info = "cm should be a 2 x 2 confusion matrix")
      }
    )
  )
)