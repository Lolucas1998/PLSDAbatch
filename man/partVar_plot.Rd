% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_assessment.R
\name{partVar_plot}
\alias{partVar_plot}
\title{Partitioned Variance Plot}
\usage{
partVar_plot(
  prop.df,
  text.cex = 3,
  x.angle = 60,
  x.hjust = 1,
  title = NULL,
  color.set = NULL
)
}
\arguments{
\item{prop.df}{A data frame that contains the proportion of variance
explained by different sources.}

\item{text.cex}{Numeric, the size of text on the plot.}

\item{x.angle}{Numeric, angle of x axis, in the range of
\eqn{0} to \eqn{360}.}

\item{x.hjust}{Numeric, horizontal justification of x axis,
in the range of \eqn{0} to \eqn{1}.}

\item{title}{Character, the plot title.}

\item{color.set}{A vector of characters, indicating the set of colors to use.
The colors are represented by hexadecimal color code.}
}
\value{
None.
}
\description{
This function draws a partitioned variance plot explained
by different sources.
}
\examples{
## First example
library(vegan) # for function varpart()
data('AD_Egdata')
ad.clr <- assay(AD_Egdata) # centered log ratio transformed data
ad.batch <- rowData(AD_Egdata)$Y.bat
attr(ad.batch, "names") <- rowData(AD_Egdata)@rownames # batch information
ad.trt <- rowData(AD_Egdata)$Y.trt 
attr(ad.trt, "names") <- rowData(AD_Egdata)@rownames # treatment information

ad.factors.df <- data.frame(trt = ad.trt, batch = ad.batch)
rda.res <- varpart(ad.clr, ~ trt, ~ batch,
                   data = ad.factors.df, scale = TRUE)

ad.prop.df <- data.frame(Treatment = NA, Batch = NA,
                         Intersection = NA,
                         Residuals = NA)
ad.prop.df[1,] <- rda.res$part$indfract$Adj.R.squared

ad.prop.df <- ad.prop.df[, c(1,3,2,4)]

ad.prop.df[ad.prop.df < 0] <- 0
ad.prop.df <- as.data.frame(t(apply(ad.prop.df, 1, function(x){x/sum(x)})))

partVar_plot(prop.df = ad.prop.df)

## Second example
# data corrected from different methods
data('AD_Egdata','AD_data_rmbatch','AD_data_combat',
'AD_data_plsdabatch','AD_data_splsdabatch',
'AD_data_PN','AD_data_RUVIII')
ad.prop.df <- data.frame(Treatment = NA, Batch = NA,
                         Intersection = NA,
                         Residuals = NA)
ad.corrected.list <- list(Before = assay(AD_Egdata),
                          removeBatchEffect = assay(AD_data_rmbatch),
                          ComBat = assay(AD_data_combat),
                         `PLSDA-batch` = assay(AD_data_plsdabatch),
                         `sPLSDA-batch` = assay(AD_data_splsdabatch),
                         `Percentile Normalisation` = assay(AD_data_PN),
                          RUVIII = assay(AD_data_RUVIII))
for(i in seq_len(length(ad.corrected.list))){
  rda.res <- varpart(ad.corrected.list[[i]], ~ trt, ~ batch,
                    data = ad.factors.df, scale = TRUE)
  ad.prop.df[i, ] <- rda.res$part$indfract$Adj.R.squared}

rownames(ad.prop.df) <- names(ad.corrected.list)

ad.prop.df <- ad.prop.df[, c(1,3,2,4)]

ad.prop.df[ad.prop.df < 0] <- 0
ad.prop.df <- as.data.frame(t(apply(ad.prop.df, 1,
                                    function(x){x/sum(x)})))

partVar_plot(prop.df = ad.prop.df)


}
\seealso{
\code{\link{Scatter_Density}}, \code{\link{box_plot}},
\code{\link{density_plot}} and \code{\link{alignment_score}} as the other
methods for batch effect detection and batch effect removal assessment.
}
\author{
Yiwen Wang, Kim-Anh Lê Cao
}
