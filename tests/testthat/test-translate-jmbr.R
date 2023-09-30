test_that("multiplication works", {
  expect_snapshot({
    translate_jmbr(expr({
      bY ~ dnorm(0, sd = 2)
      bX ~ dnorm(0, sd = 2)
      sY ~ T(dnorm(0, sd = 2), 0, )

      for (i in 1:nObs) {
        eY[i] <- bY + bX * X[i]
        Y[i] ~ dnorm(eY[i], sd = sY)
      }
    }))
  })
})
