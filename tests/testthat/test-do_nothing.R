test_that("it's like identity", {
  data <- BOD
  expect_equal(do_nothing(data), identity(data))
})

test_that("expects a data.frame", {
  data <- "a"
  expect_snapshot_error(do_nothing(data))
})
