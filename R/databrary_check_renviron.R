#' Are Databrary Credentials Stored in ~/.Renviron?
#'
#' @param databrary_user_id A valid Databrary user ID (email).
databrary_check_renviron <- function() {
  databrary_user_id <- readline(prompt = "Enter Databrary login (email): ")

  require(usethis)

  if (databrary_user_id != Sys.getenv("DATABRARY_LOGIN")) {
    message("Databrary credentials '", databrary_user_id, "' not stored in ~/.Renviron")
    message("Opening ~/.Renviron so user can edit.")
    message("Add Databrary credentials to this file with a new line:")
    message("`DATABRARY_LOGIN='account@domain.edu'`")
    message("Save the file, then restart R.")
    usethis::edit_r_environ()
  } else {
    message("Databrary account '", databrary_user_id, "' stored in ~/.Renviron.")
  }
}
