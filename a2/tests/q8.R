test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(all(c("mas", "n", "fma_median", "tsrt_median") %in% names(by_mas)), info = "by_mas needs the columns mas, n, fma_median, tsrt_median")
        testthat::expect_equal(sum(by_mas$n), 41)
      }
    )
  )
)