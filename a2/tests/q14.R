test = list(
  name = "q14",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        testthat::expect_true(is.character(ai_used) && length(ai_used) == 1 && ai_used %in% c("yes", "no"), info = "ai_used should be \"yes\" or \"no\"")
      }
    )
  )
)