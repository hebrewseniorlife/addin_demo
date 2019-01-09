#' Manage Database Connection
#'
#' @description This RStudio Addin opens up the .odbc.ini file to manage local
#' SQL server login credential
#' @export
odbc_ini <- function() {
  if (!file.exists("~/.odbc.ini")) {
    file.create("~/.odbc.ini")
    sink("~/.odbc.ini")
    cat("[MySQL Playground]\nDriver    = MySQL \nServer    = ifar-mysql-test.hebrewseniorlife.local\nDatabase  = sandbox_biostats\nPort      = 3306\nUID       = biostats_owner\nPWD       = Hebrew12345\n# This section is only for your reference if you start \n# from scratch. If you have received such info from the \n# admin, please paste the info down below.")
    sink()
  }
  file.edit("~/.odbc.ini")
}
