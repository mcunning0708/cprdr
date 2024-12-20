% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_au_obs_medcode.R
\name{filter_au_obs_medcode}
\alias{filter_au_obs_medcode}
\title{Filter array of AU Observation files using single medcode
This function will filter out those matching medcodeid supplied}
\usage{
filter_au_obs_medcode(pa_obs_files, p_medcode)
}
\arguments{
\item{pa_obs_files}{the array of AURUM Extract Observation filenames}

\item{p_medcode}{the character type medcode}
}
\value{
a tibble containing only the AURUM observations matching p_medcode
}
\description{
Filter array of AU Observation files using single medcode
This function will filter out those matching medcodeid supplied
}
\examples{
filter_au_obs_medcode( "Observation_001.txt", "12345678" )
}
