test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(all(c("mas", "n") %in% names(mas_counts)), info = "mas_counts should have the columns mas and n (use count(spas, mas))")
        testthat::expect_equal(sum(mas_counts$n), 41)
      }
    )
  )
)