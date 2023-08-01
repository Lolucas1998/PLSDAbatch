#' Sponge \emph{A. aerophoba} study
#'
#' This study investigated the relationship between metabolite concentration
#' and microbial abundance of specific sponge tissues. The samples were
#' collected from two types of tissues (Ectosome vs. Choanosome) and processed
#' on two separate denaturing gradient gels in electrophoresis. This study
#' includes relative abundance data only and a completely balanced
#' batch x treatment design.
#' 
#' 
#' representation of the relative abundance data as a data frame with
#' 32 samples and 24 OTUs.
#' @docType data
#' @import SummarizedExperiment
#' @format SummarizedExperiment
#' @keywords datasets
#' @name sponge_data
#' @usage data(sponge_data)
#' @source The raw data were downloaded from the referenced article. Filtering
#' and normalisation described in our package vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' sponge tissues for each sample that is the effect of interest in the sponge 
#' study and factor of electrophoresis gels where the sample processed for
#' each sample treated as the batch effect.
#' @examples
#' data(sponge_data)
"sponge_data"

#' Anaerobic digestion study
#'
#' This study explored the microbial indicators that could improve the efficacy
#' of anaerobic digestion (AD) bioprocess and prevent its failure. The samples
#' were treated with two different ranges of phenol concentration (effect of
#' interest) and processed at five different dates (batch effect). This study
#' includes a clear and strong batch effect with an approx. balanced
#' batch x treatment design.
#' 
#' 
#' representation of the raw data as a matrix with 75 samples and 567 OTUs.
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_Fulldata
#' @usage data(AD_Fulldata)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the meta data 
#' information of samples. See colData() component of this SummarizedExperiment 
#' for detail of the taxonomy of each OTU.
#' @examples
#' data(AD_Fulldata)
"AD_Fulldata"
#' representation of the filtered and centered log ratio transformed data 
#' including 75 samples and 231 OTUs from the raw data.
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_Egdata
#' @usage data(AD_Egdata)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' phenol concentrations for each sample that is the effect of interest in 
#' the AD study and factor of sample processing dates for each sample treated 
#' as the batch effect.
#' @examples
#' data(AD_Egdata)
"AD_Egdata"
#' representation of the data sets after batch effect correction 
#' using removeBatchEffect() function (from limma package).
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_data_rmbatch
#' @usage data(AD_data_rmbatch)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' phenol concentrations for each sample that is the effect of interest in 
#' the AD study and factor of sample processing dates for each sample treated 
#' as the batch effect.
#' @examples
#' data(AD_data_rmbatch)
"AD_data_rmbatch"
#' representation of the data sets after batch effect correction 
#' using ComBat() function (from sva package).
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_data_combat
#' @usage data(AD_data_combat)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' phenol concentrations for each sample that is the effect of interest in 
#' the AD study and factor of sample processing dates for each sample treated 
#' as the batch effect.
#' @examples
#' data(AD_data_combat)
"AD_data_combat"
#' representation of the data sets after batch effect correction 
#' using PLSDAbatch.
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_data_plsdabatch
#' @usage data(AD_data_plsdabatch)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' phenol concentrations for each sample that is the effect of interest in 
#' the AD study and factor of sample processing dates for each sample treated 
#' as the batch effect.
#' @examples
#' data(AD_data_plsdabatch)
"AD_data_plsdabatch"
#' representation of the data sets after batch effect correction 
#' using sPLSDAbatch.
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_data_splsdabatch
#' @usage data(AD_data_splsdabatch)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' phenol concentrations for each sample that is the effect of interest in 
#' the AD study and factor of sample processing dates for each sample treated 
#' as the batch effect.
#' @examples
#' data(AD_data_splsdabatch)
"AD_data_splsdabatch"
#' representation of the data sets after batch effect correction 
#' using Percentile Normalisation.
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_data_PN
#' @usage data(AD_data_PN)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' phenol concentrations for each sample that is the effect of interest in 
#' the AD study and factor of sample processing dates for each sample treated 
#' as the batch effect.
#' @examples
#' data(AD_data_PN)
"AD_data_PN"
#' representation of the data sets after batch effect correction using RUVIII.
#' @docType data
#' @format SummarizedExperiment
#' @keywords datasets
#' @name AD_data_RUVIII
#' @usage data(AD_data_RUVIII)
#' @source The raw data were provided by Dr. Olivier Chapleur and published at
#' the referenced article. Filtering and normalisation described in our package
#' vignette.
#' @note See rowData() component of this SummarizedExperiment for the factor of 
#' phenol concentrations for each sample that is the effect of interest in 
#' the AD study and factor of sample processing dates for each sample treated 
#' as the batch effect.
#' @examples
#' data(AD_data_RUVIII)
"AD_data_RUVIII"
