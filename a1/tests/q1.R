test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(speed, 0.8, info = "speed should be distance_m / time_s, i.e. 10 / 12.5 = 0.8")
      }
    )
  )
)