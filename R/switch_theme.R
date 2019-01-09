#' Toggle RStudio Server Theme between Dark and Light
#'
#' @description This RStudio Addin switches between Dark and Light
#' @export
switch_theme <- function() {
  current_theme <- rstudioapi::getThemeInfo()$editor
  next_theme <- c("Clouds", "Clouds Midnight")
  next_theme <- next_theme[next_theme != current_theme]
  rstudioapi::applyTheme(next_theme)
}
