test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(is.numeric(acc_k1_row) && acc_k1_row >= 0 && acc_k1_row <= 1)
        testthat::expect_true(is.numeric(acc_k1_person) && length(acc_k1_person) == 1 && acc_k1_person >= 0 && acc_k1_person <= 1, info = "acc_k1_person should be one share between 0 and 1")
      }
    )
  )
)