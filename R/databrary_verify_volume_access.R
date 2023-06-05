#'Verify access to PLAY data volume on Databrary.
#'
#'@param vol_id Databrary volume ID; defaults to 1280.
databrary_verify_volume_access <- function(vol_id = 1280) {
  stopifnot(length(vol_id) == 1)
  stopifnot(is.numeric(vol_id))
  
  vol_data <- databraryapi::list_volume(vol_id)
  if (is.null(vol_data)) {
    message("Failure to retrieve data from volume '", vol_id, "'")
    NULL
  } else {
   vol_data 
  }
}