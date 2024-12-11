#' Filter array of AU Observation files using single medcode
#' This function will filter out those matching medcodeid supplied
#'
#' @param pa_obs_files the array of AURUM Extract Observation filenames
#' @param p_medcode the character type medcode
#'
#' @return a tibble containing only the AURUM observations matching p_medcode
#' @export
#'
#' @examples
#' filter_au_obs_medcode( "Observation_001.txt", "12345678" )
filter_au_obs_medcode <- function( pa_obs_files, p_medcode) {
  l_combine_files <- lapply( pa_obs_files, read_aurum_obs )

  ldf_obs_combined <- do.call( "rbind", l_combine_files )

  ldf_obs_combined <- ldf_obs_combined %>%
    dplyr::filter( medcodeid == p_medcode )

  return( ldf_obs_combined )
}
