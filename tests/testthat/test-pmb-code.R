test_that("pmb_code() works", {
  expect_snapshot({
    pmb_code({})
    pmb_code("#include <TMB.hpp>")
    pmb_code("parameters {")
    pmb_code("model {")
    pmb_code(pmb_code({}))
    pmb_code(
      pmbr = {},
      jmbr = "model {",
      tmbr = "#include <TMB.hpp>",
    )
    pmb_code(
      pmbr = mb_code({}),
      jmbr = mb_code("model {"),
      tmbr = mb_code("#include <TMB.hpp>"),
    )
    pmb_code(c(
      pmbr = mb_code({}),
      jmbr = mb_code("model {"),
      tmbr = mb_code("#include <TMB.hpp>")
    ))
    pmb_code(list(
      pmbr = {},
      jmbr = mb_code("model {"),
      tmbr = mb_code("#include <TMB.hpp>")
    ))
  })
})
