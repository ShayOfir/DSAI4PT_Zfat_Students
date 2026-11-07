test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(all(c("lesion_type", "n", "fma_median", "tsrt_mean", "tsrt_sd") %in% names(by_type)), info = "by_type needs the columns lesion_type, n, fma_median, tsrt_mean, tsrt_sd")
        testthat::expect_equal(nrow(by_type), 3)
      }
    )
  )
)