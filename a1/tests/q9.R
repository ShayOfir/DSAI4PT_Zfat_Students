test = list(
  name = "q9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(exists("patients_tbl"), info = "patients_tbl does not exist: the cell still has an error (could not find function). Which package must be loaded with library()?")
        testthat::expect_equal(nrow(patients_tbl), 3)
      }
    )
  )
)