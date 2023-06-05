#' Loads CSV data file from Databrary
#' 
#' @param session_id Session ID (folder) for data files; default is 51539.
#' @param asset_id Asset ID (file); default is 380333.
#' @param vb Show verbose feedback; default is FALSE.
databrary_load_data_csv <- function(session_id = 51539, asset_id = 380333, vb = FALSE) {
  stopifnot(is.numeric(session_id))
  stopifnot(length(session_id) == 1)
  stopifnot(is.numeric(asset_id))
  stopifnot(length(asset_id) == 1)
  
  databraryapi::read_csv_data_as_df(session_id, asset_id, vb)
}