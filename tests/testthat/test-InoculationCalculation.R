test_that("Formula works with all options", {
  expect_equal(InoculationCalculation(stockTitre = 10^7.8, inoculumTitre = 16000000, inoculumVolume = 300, replicates = 3, margin = 0)[[3]], 672)
})

test_that("Formula works with default options", {
  expect_equal(InoculationCalculation(stockTitre = 10^7.8, inoculumTitre = 16000000, inoculumVolume = 300)[[3]], 246)
})
