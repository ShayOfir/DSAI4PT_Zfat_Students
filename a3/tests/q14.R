test = list(
  name = "q14",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(is.data.frame(age_by_group) && all(c("group", "n_persons", "mean_age") %in% names(age_by_group)), info = "age_by_group needs the columns group, n_persons, mean_age")
        testthat::expect_equal(nrow(age_by_group), 2)
      }
    )
  )
)