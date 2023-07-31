test_that("checking alignment_score", {
    data('se_sponge_data')
    X <- logratio.transfo(X = assay(se_sponge_data), logratio = 'CLR', offset = 0.01)
    batch <- rowData(se_sponge_data)$Y.bat
    attr(batch, "names") <- rowData(se_sponge_data)@rownames
    res.alscore <- alignment_score(data = X, batch = batch, var = 0.95, k = 3, ncomp = 20)
    expect_is(res.alscore, 'numeric')
    expect_equal(round(res.alscore, digits = 3), 0.054)
 })
