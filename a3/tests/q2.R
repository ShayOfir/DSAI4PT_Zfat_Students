test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_equal(n_persons, 55, info = "n_persons should be 55 (use n_distinct(fingers$person))")
      }
    )
  )
)