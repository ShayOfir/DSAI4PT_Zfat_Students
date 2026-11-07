test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(all(c("age_group", "lesion_vol_log10") %in% names(spas)), info = "spas should have the columns age_group and lesion_vol_log10")
        testthat::expect_equal(levels(spas$age_group), c("under 50", "50-64", "65+"))
      }
    )
  )
)