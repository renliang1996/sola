% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/daylength.R
\name{daylength}
\alias{daylength}
\title{Calculate Day Length}
\usage{
daylength(lat, date)
}
\arguments{
\item{lat}{Numeric vector. Latitude in degrees. Use positive values for north, negative for south.}

\item{date}{A Date object or a date-like string vector that can be coerced to Date.}
}
\value{
Numeric vector. Day length in hours.
}
\description{
\code{daylength} calculates the maximum possible day length (sunshine duration) based on latitude and date.
}
\examples{
daylength(lat = 35, date = "2023-03-15")
daylength(lat = c(-15, 45), date = c("2024-06-21", "2023-12-21"))

}
