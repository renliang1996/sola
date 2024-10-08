% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radNC.R
\name{radNC}
\alias{radNC}
\title{Compute Solar Radiation from NetCDF Data using Angstrom-Prescott Model}
\usage{
radNC(ssd, show_progress = TRUE, na_neg = TRUE)
}
\arguments{
\item{ssd}{SpatRaster object. A multi-layer raster containing sunshine duration data (in hours) for each pixel, with one layer per day.}

\item{show_progress}{Logical. Whether to display a progress bar during the computation. Defaults to \code{TRUE}.}

\item{na_neg}{Logical. If \code{TRUE}, negative sunshine duration values are set to NA; if \code{FALSE}, they are set to 0. Defaults to \code{TRUE}.}
}
\value{
A SpatRaster object where each layer contains the computed solar radiation (in MJ/m²/day) for each corresponding day.
}
\description{
The \code{radNC} function computes daily solar radiation for each pixel in a SpatRaster object based on sunshine duration data from a NetCDF file. It uses the Angstrom-Prescott model implemented in the \code{sol_rad} function.
}
\details{
This function extracts the sunshine duration from each pixel in the \code{ssd} SpatRaster, and computes solar radiation for each pixel and each layer (day) using the Angstrom-Prescott model. The model requires sunshine duration, latitude, and the corresponding date as inputs. If any required attributes are missing, a warning or error is issued.
}
\examples{
\dontrun{
library(terra)
filename <- system.file("extdata", "ssd.nc", package = "sola")
ssd <- rast(filename)
result_raster <- radNC(ssd)
plot(result_raster)
}

}
