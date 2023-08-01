test_that("checking PLSDA_batch", {
  data('AD_Egdata')
  X <- assay(AD_Egdata)
  Y.trt <- rowData(AD_Egdata)$Y.trt
  attr(Y.trt, "names") <- rowData(AD_Egdata)@rownames
  Y.bat <- rowData(AD_Egdata)$Y.bat
  attr(Y.bat, "names") <- rowData(AD_Egdata)@rownames
  ad_plsda_batch <- PLSDA_batch(X, Y.trt, Y.bat, ncomp.trt = 1, ncomp.bat = 5)
  ad_X.corrected <- ad_plsda_batch$X.nobatch

  expect_is(ad_plsda_batch, 'list')
  expect_equal(length(names(ad_plsda_batch)), 17)

  expect_is(ad_X.corrected, 'matrix')
  expect_equal(dim(ad_X.corrected), c(75, 231))
})
