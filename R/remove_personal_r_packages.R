#' Remove All personal R packages
#'
#' @description This RStudio Addin cleans up the installations of all personal
#' R packages.
#'
#' @export
remove_personal_r_packages <- function() {
  if (rstudioapi::showQuestion(
    "Varification",
    "Are you sure you want to remove all your personal R packages?"
  )) {
    lib_path <- .libPaths()
    personal_lib_path <- lib_path[str_detect(lib_path, "/home/")]
    personal_lib_path <- personal_lib_path[1]
    unlink(personal_lib_path, recursive = T)
    dir.create(personal_lib_path)
  }
}
