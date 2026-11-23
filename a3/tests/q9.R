test = list(
  name = "q9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(tune_knn, "tune_results"), info = "tune_knn should come from tune_grid()")
        testthat::expect_equal(workflows::extract_spec_parsnip(wf_knn)$mode, "classification")
      }
    )
  )
)