context("test-v1")

test_that("multiplication works", {
  tar <- echo("test")
  expect_equal(class(tar),  "list")
})
