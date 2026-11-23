test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(nrow(fingers), 119, info = "fingers should keep all 119 rows (person-sessions)")
        testthat::expect_equal(levels(fingers$group), c("stroke", "intact"), info = "group should be a factor with levels stroke, intact (in this order)")
      }
    )
  )
)