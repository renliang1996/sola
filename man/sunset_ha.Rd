% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sunset_ha.R
\name{sunset_ha}
\alias{sunset_ha}
\title{Sunset Hour Angle Calculation}
\usage{
sunset_ha(dates, latitudes, in_degrees = FALSE)
}
\arguments{
\item{dates}{A Date object, a date-like string, or a numeric value that can be coerced to Date.}

\item{latitudes}{Numeric vector. Latitudes in degrees (positive for northern hemisphere, negative for southern).}

\item{in_degrees}{Logical. If \code{TRUE}, returns the angle in degrees. If \code{FALSE} (default), returns in radians.}
}
\value{
A numeric vector representing the sunset hour angle in radians (default) or degrees.
}
\description{
\code{sunset_ha} calculates the sunset hour angle for a given date and latitude.
}
\examples{
sunset_ha("2023-03-15", latitudes = 35) # Returns in radians (default)
sunset_ha(c("2023-03-15","2023-04-20"), latitudes = c(35, 45), in_degrees = TRUE) # Returns in degrees

}
