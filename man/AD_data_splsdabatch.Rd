% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{AD_data_splsdabatch}
\alias{AD_data_splsdabatch}
\title{representation of the data sets after batch effect correction 
using sPLSDAbatch.}
\format{
SummarizedExperiment
}
\source{
The raw data were provided by Dr. Olivier Chapleur and published at
the referenced article. Filtering and normalisation described in our package
vignette.
}
\usage{
data(AD_data_splsdabatch)
}
\description{
representation of the data sets after batch effect correction 
using sPLSDAbatch.
}
\note{
See rowData() component of this SummarizedExperiment for the factor of 
phenol concentrations for each sample that is the effect of interest in 
the AD study and factor of sample processing dates for each sample treated 
as the batch effect.
}
\examples{
data(AD_data_splsdabatch)
}
\keyword{datasets}
