test_that("it's like identity", {
  data <- datasets::BOD
  expect_equal(do_nothing(data), identity(data))
})

test_that("it's like identity", {
  expect_snapshot(do_nothing("a"), error = TRUE)
})
