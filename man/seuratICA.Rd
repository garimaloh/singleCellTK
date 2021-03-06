% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seuratFunctions.R
\name{seuratICA}
\alias{seuratICA}
\title{seuratICA
Computes ICA on the input sce object and stores the calculated independent components within the sce object}
\usage{
seuratICA(inSCE, useAssay, reducedDimName = "seuratICA", nics = 20)
}
\arguments{
\item{inSCE}{(sce) object on which to compute ICA}

\item{useAssay}{Assay containing scaled counts to use in ICA.}

\item{reducedDimName}{Name of new reducedDims object containing Seurat ICA Default \code{seuratICA}.}

\item{nics}{Number of independent components to compute. Default \code{20}.}
}
\value{
Updated \code{SingleCellExperiment} object which now contains the computed independent components
}
\description{
seuratICA
Computes ICA on the input sce object and stores the calculated independent components within the sce object
}
\examples{
data(scExample, package = "singleCellTK")
\dontrun{
sce <- seuratNormalizeData(sce, useAssay = "counts")
sce <- seuratFindHVG(sce, useAssay = "counts")
sce <- seuratScaleData(sce, useAssay = "counts")
sce <- seuratICA(sce, useAssay = "counts")
}
}
