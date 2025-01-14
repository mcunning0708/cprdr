% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_aurum_obs.R
\name{read_aurum_obs}
\alias{read_aurum_obs}
\title{Read the contents of an AURUM tsv Observation file into a data frame}
\usage{
read_aurum_obs(pDatafile)
}
\arguments{
\item{pDatafile:}{the filename of a single AURUM Extract Observation}
}
\value{
a tibble containing the contents of a single AURUM observation file
}
\description{
Read the contents of an AURUM tsv Observation file into a data frame
}
\examples{
read_aurum_obs( "Observation_002.txt" )

}
