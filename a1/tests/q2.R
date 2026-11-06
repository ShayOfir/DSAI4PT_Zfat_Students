test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(n_patients, 8, info = "n_patients should be 8 (use length(fma))")
        testthat::expect_equal(fma_mean, 41.75, info = "fma_mean should be 41.75 (use mean(fma))")
      }
    )
  )
)