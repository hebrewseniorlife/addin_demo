#' Manage Database Connection
#'
#' @description This RStudio Addin opens up the .odbc.ini file to manage local
#' SQL server login credential
#' @export
odbc_ini <- function() {
  if (!file.exists("~/.odbc.ini")) {
    file.create("~/.odbc.ini")
    # If you worry your users will get lost, you can provide an example here
    sink("~/.odbc.ini")
    cat("Some Example setup")
    sink()
  }
  file.edit("~/.odbc.ini")
}
