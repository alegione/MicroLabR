test_that("Basic formula works", {
  expect_equal(MOI.InoculationConcentration(surfaceArea = 9.6,confluence = 1, cellsPercm = 100000, MOI = 5, inoculationVolume = 300), 16000000)
})
