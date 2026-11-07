test = list(
  name = "q13",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # public test
        p <- p_num_num
        has_geom <- function(p, g) any(vapply(p$layers, function(l) inherits(l$geom, g), TRUE))
        vars_of <- function(p) { ms <- c(list(p$mapping), lapply(p$layers, function(l) l$mapping))
          unique(unlist(lapply(ms, function(m) unlist(lapply(as.list(m), function(q) all.vars(rlang::quo_get_expr(q))))))) }
        lab <- ggplot2::get_labs(p)
        testthat::expect_true(inherits(p, "ggplot"), info = "p_num_num should be a ggplot object")
        testthat::expect_true(has_geom(p, "GeomPoint"), info = "p_num_num should use geom_point()")
      }
    )
  )
)