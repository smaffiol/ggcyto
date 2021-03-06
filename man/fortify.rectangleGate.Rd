% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fortify.R
\name{fortify.rectangleGate}
\alias{fortify.rectangleGate}
\title{Convert a rectangleGate to a data.table useful for ggplot}
\usage{
\method{fortify}{rectangleGate}(model, data = NULL, ...)
}
\arguments{
\item{model}{rectangleGate}

\item{data}{data range used for polygon interpolation.}

\item{...}{not used.}
}
\value{
data.table
}
\description{
For 2d rectangelGate, it is converted to a polygonGate first and then dispatch to the fortify method for polygonGate.
for 1d, uses geom_vline/hline format.
}
\examples{
#2d rectangleGate
rect.g <- rectangleGate(list("FSC-H" =  c(300,500), "SSC-H" = c(50,200)))
fortify(rect.g)
#1d gate
rg <- rectangleGate(list("FSC-H" =  c(300,500)))
fortify(rg)

}
