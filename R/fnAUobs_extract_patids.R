#' Extract the unique patids from an array of AURUM Observation data files
#'
#' @param pa_obs_files the array of AURUM Extract Observation filenames
#'
#' @return a tibble containing the unique patids in supplied AURUM observations
#' @export
#'
#' @examples
#' fnAUobs_extract_patids( "Observation_001.txt" )
fnAUobs_extract_patids <- function( pa_obs_files) {
  l_combine_files <- lapply( pa_obs_files, fnAUread_tab_obs )

  ldf_obs_combined <- do.call( "rbind", l_combine_files )

  ldf_unique_patids <- ldf_obs_combined %>% distinct( patid )

  return( ldf_unique_patids )
}
