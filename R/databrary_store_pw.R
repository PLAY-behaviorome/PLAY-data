#' Store Databrary credentials in secure system keychain
#'
#' @param databrary_user_id A valid Databrary user ID (email).
databrary_store_pw <- function() {
  require(databraryapi)

  databraryapi::config_passwd()
}
