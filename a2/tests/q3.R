test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(is.factor(spas$lesion_type), info = "lesion_type should be a factor")
        testthat::expect_equal(levels(spas$lesion_type), c("ischemic", "hemorrhagic", "mixed"), info = "levels of lesion_type: ischemic, hemorrhagic, mixed (in this order)")
        testthat::expect_equal(as.vector(table(spas$lesion_type)), c(31, 9, 1))
      }
    )
  )
)