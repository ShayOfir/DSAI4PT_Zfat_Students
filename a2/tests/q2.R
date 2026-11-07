test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(n_lesion_type_values, 3, info = "n_lesion_type_values should be 3 (one of them is odd: look at it)")
        testthat::expect_true(fma_in_range, info = "fma_in_range should be TRUE: check with all(fma >= 0 & fma <= 66)")
      }
    )
  )
)