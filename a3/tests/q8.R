test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(folds, "group_vfold_cv"), info = "folds should come from group_vfold_cv()")
        testthat::expect_equal(nrow(folds), 5, info = "5 folds expected")
      }
    )
  )
)