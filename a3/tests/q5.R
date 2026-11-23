test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(inherits(person_split, "initial_split"), info = "person_split should come from group_initial_split()")
        testthat::expect_equal(nrow(person_train) + nrow(person_test), 119)
      }
    )
  )
)