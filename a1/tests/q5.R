test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(tug_1dec, 13.5, info = "tug_1dec should be round(tug_time, 1) = 13.5")
      }
    )
  )
)