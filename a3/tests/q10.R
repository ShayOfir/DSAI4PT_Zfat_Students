test = list(
  name = "q10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(chosen_model %in% c("logistic", "knn"), info = "chosen_model should be logistic or knn")
      }
    )
  )
)