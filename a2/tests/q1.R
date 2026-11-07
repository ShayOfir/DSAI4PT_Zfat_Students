test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(n_rows, 41, info = "n_rows should be 41 (use nrow(spas_raw))")
        testthat::expect_equal(n_cols, 11, info = "n_cols should be 11 (use ncol(spas_raw))")
      }
    )
  )
)