test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(rec_ii, "recipe"), info = "rec_ii should be a recipe")
        testthat::expect_setequal(names(train_ii), c("ii_flex", "ii_ext", "group"))
      }
    )
  )
)