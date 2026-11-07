test = list(
  name = "q10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(as.numeric(vol_q1), 5.1, info = "vol_q1 should be quantile(spas$lesion_vol, 0.25) = 5.1")
        testthat::expect_equal(as.numeric(vol_q3), 32.81, info = "vol_q3 should be quantile(spas$lesion_vol, 0.75) = 32.81")
      }
    )
  )
)