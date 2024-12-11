
#' Read the contents of an AURUM Observation file into a data frame
#'
#' @param pDatafile the filename of a single AURUM Extract Observation
#'
#' @return a tibble containing the contents of a single AURUM observation file
#' @export
#'
#' @examples
#' fnAUread_tab_obs( "Observation_001.txt" )
fnAUread_tab_obs <-function (pDatafile){
  #'
  ldf_read <- readr::read_tsv ( file = pDatafile, col_types = cols(
    patid = col_character(),
    consid = col_character(),
    pracid = col_double(),
    obsid = col_character(),
    obsdate = col_date(format = "%d/%m/%Y"),
    enterdate = col_date(format = "%d/%m/%Y"),
    staffid = col_character(),
    parentobsid = col_character(),
    medcodeid = col_character(),
    value = col_double(),
    numunitid = col_double(),
    obstypeid = col_double(),
    numrangelow = col_double(),
    numrangehigh = col_double(),
    probobsid = col_character()  )
  )

  return( ldf_read)
}
