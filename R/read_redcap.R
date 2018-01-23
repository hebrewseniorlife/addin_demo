#' Read data from IFAR REDCap
#'
#' @description Wrapper of REDCapR::redcap_read_oneshot
#'
#' @param token Your REDCap token for specific project
#' @param ids A vector of selected participants ID to be pulled. If `NULL`
#' (default), all records will be pulled.
#' @param fields A vector of selected fields to be pulled. Default is `NULL`.
#' @param events A vector of selected study events. Default is `NULL`.
#'
#' @export
read_redcap <- function(token, ids = NULL, fields = NULL, events = NULL) {
  out <- redcap_read_oneshot(
    redcap_uri = "https://ifar-edc.hsl.harvard.edu/redcap/api/",
    token = token,
    records = ids,
    fields = fields,
    events = events
  )$data
  return(as_data_frame(out))
}
