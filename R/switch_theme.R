#' Toggle RStudio Server Theme between Dark and Light
#'
#' @description This RStudio Addin switches between Dark and Light
#' @export
switch_theme <- function() {
  current_theme <- rstudioapi::getThemeInfo()
  next_theme <- ifelse(current_theme$dark, "Clouds", "Clouds Midnight")
  rstudioapi::applyTheme(next_theme)
}
