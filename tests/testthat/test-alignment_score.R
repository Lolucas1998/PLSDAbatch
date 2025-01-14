test_that("checking alignment_score", {
    data('sponge_data')
    X <- logratio.transfo(X = assay(sponge_data), logratio = 'CLR', offset = 0.01)
    batch <- rowData(sponge_data)$Y.bat
    attr(batch, "names") <- rowData(sponge_data)@rownames
    res.alscore <- alignment_score(data = X, batch = batch, var = 0.95, k = 3, ncomp = 20)
    expect_is(res.alscore, 'numeric')
    expect_equal(round(res.alscore, digits = 3), 0.054)
 })
