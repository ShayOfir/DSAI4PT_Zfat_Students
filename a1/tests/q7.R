test = list(
  name = "q7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(exists("side_label"), info = "side_label does not exist: the cell still has an error (check that every opening quote has a closing quote)")
        testthat::expect_equal(side_label, "Affected side: Left")
      }
    )
  )
)