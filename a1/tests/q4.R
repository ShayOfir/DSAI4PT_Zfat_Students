test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(nrow(patients), 5, info = "patients should have 5 rows")
        testthat::expect_equal(mean_age, 60.4, info = "mean_age should be mean(patients$age) = 60.4")
      }
    )
  )
)