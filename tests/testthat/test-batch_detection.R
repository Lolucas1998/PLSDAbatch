test_that("checking Scatter_Density", {
  library(mixOmics)
  data('se_AD_Egdata')
  ad.clr <- assay(se_AD_Egdata)
  ad.pca.before <- pca(ad.clr, ncomp = 3, scale = TRUE)
  ad.batch <- rowData(se_AD_Egdata)$Y.bat
  attr(ad.batch, "names") <- rowData(se_AD_Egdata)@rownames
  ad.trt <- rowData(se_AD_Egdata)$Y.trt
  attr(ad.trt, "names") <- rowData(se_AD_Egdata)@rownames
  res.sdplot <- Scatter_Density(object = ad.pca.before, batch = ad.batch, trt = ad.trt)
  expect_is(res.sdplot, 'gtable')
  expect_is(res.sdplot, 'grob')
})


test_that("checking box_plot", {
  data('se_AD_Egdata')
  ad.clr <- assay(se_AD_Egdata)
  ad.batch <- rowData(se_AD_Egdata)$Y.bat
  attr(ad.batch, "names") <- rowData(se_AD_Egdata)@rownames
  ad.df <- data.frame(value = ad.clr[,1], batch = ad.batch)
  res.bplot <- box_plot(df = ad.df, title = 'OTU 12', x.angle = 30)
  expect_is(res.bplot, 'ggplot')
})


test_that("checking density_plot", {
  data('se_AD_Egdata')
  ad.clr <- assay(se_AD_Egdata)
  ad.batch <- rowData(se_AD_Egdata)$Y.bat
  ad.df <- data.frame(value = ad.clr[,1], batch = ad.batch)
  res.dplot <- density_plot(df = ad.df, title = 'OTU 12')
  expect_is(res.dplot, 'ggplot')
})
