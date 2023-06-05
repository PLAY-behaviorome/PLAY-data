#' List contents of materials folder on data volume
#' 
#' @param vol_id Databrary volume ID; default is 1280.
#' @param session_id Session ID for materials folder; default is 51539.
databrary_list_data_files <- function(session_id = 51539) {
  stopifnot(is.numeric(session_id))
  stopifnot(length(session_id) == 1)
  
  databraryapi::list_assets_in_session(session_id)
}