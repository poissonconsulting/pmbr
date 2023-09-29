test_that("pmb_code() works", {
  expect_snapshot({
    pmb_code({})
    pmb_code("#include <TMB.hpp>")
    pmb_code("parameters {")
    pmb_code("model {")
    pmb_code(pmb_code({}))
  })
})
