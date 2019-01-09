library(odbc)
con <- DBI::dbConnect(
  odbc::odbc(),
  Driver = "MySQL",
  Server = "ifar-mysql01.hebrewseniorlife.local",
  Database = "${0:Database=}",
  UID = rstudioapi::askForPassword("Database user"),
  PWD = rstudioapi::askForPassword("Database Password"),
  Port = 3306
)
