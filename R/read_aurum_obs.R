#' Read the contents of an AURUM tsv Observation file into a data frame
#'
#' @param pDatafile: the filename of a single AURUM Extract Observation
#'
#' @return a tibble containing the contents of a single AURUM observation file
#' @export
#'
#' @examples
#' read_aurum_obs( "Observation_002.txt" )
read_aurum_obs <-function (pDatafile){
  #'
  ldf_read <- readr::read_tsv ( file = pDatafile, col_types = readr::cols(
    patid = readr::col_character(),
    consid = readr::col_character(),
    pracid = readr::col_double(),
    obsid = readr::col_character(),
    obsdate = readr::col_date(format = "%d/%m/%Y"),
    enterdate = readr::col_date(format = "%d/%m/%Y"),
    staffid = readr::col_character(),
    parentobsid = readr::col_character(),
    medcodeid = readr::col_character(),
    value = readr::col_double(),
    numunitid = readr::col_double(),
    obstypeid = readr::col_double(),
    numrangelow = readr::col_double(),
    numrangehigh = readr::col_double(),
    probobsid = readr::col_character()  )
  )

  return( ldf_read)
}
