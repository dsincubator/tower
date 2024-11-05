test_that("it's like identity", {
  data <- datasets::BOD
  expect_equal(do_nothing(data), identity(data))
})
