#' Store Databrary credentials in secure system keychain
#'
#' @param databrary_user_id A valid Databrary user ID (email).
databrary_test_login <- function(env_var = "DATABRARY_LOGIN") {
  require(databraryapi)

  db_login <- Sys.getenv(env_var)
  if (!databraryapi::login_db(db_login)) {
    message("Login failed. '", paste0(env_var, "=", db_login), "' found in ~/.Renviron is invalid.")
    new_db_login <- readline(prompt = "Enter Databrary login (email): ")
    if (!databraryapi::login_db(new_db_login)) {
      message("Cannot access Databrary with account: '", new_db_login, "'")
      message("Try `databraryapi::config_pw()`")
      FALSE
    } else {
      message("Consider saving this user ID in ~/.Renviron.")
      message("Try `databrary_check_environ().`")
      TRUE
    }
  } else TRUE
}
