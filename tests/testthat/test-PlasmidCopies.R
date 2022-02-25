test_that("plasmid copies returns a correct value when total length is used", {
  expect_equal(PlasmidCopies(totalLength = 3460, weight = 5.9), 1555904295)
})

test_that("plasmid copies returns a correct value when individual lengths are used", {
  expect_equal(PlasmidCopies(plasmidLength = 3000, insertLength = 460, weight = 5.9), 1555904295)
})

test_that("Plasmid copies are the same whether total length or individual lengths are used", {
  expect_equal(PlasmidCopies(plasmidLength = 3000, insertLength = 460, weight = 5.9), PlasmidCopies(totalLength = 3460, weight = 5.9))
})
