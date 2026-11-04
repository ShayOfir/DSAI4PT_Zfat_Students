test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        name = "q1-public"
        testthat::expect_equal(length(fma), 5)
        testthat::expect_equal(fma_mean, 41.6)
      }
    )
  )
)