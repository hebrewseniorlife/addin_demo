#' Open Up Octave
#' @export
open_octave <- function() {
  new_term <- TRUE
  if (length(rstudioapi::terminalList()) == 0) {
    term_id <- rstudioapi::terminalCreate(caption = "octave")
  } else {
    terms <- rstudioapi::terminalList()
    term_caption <- unlist(sapply(terms, function(x){
      rstudioapi::terminalContext(x)["caption"]
      }))
    if ("octave" %in% term_caption) {
      term_id <- terms[term_caption == "octave"]
      new_term <- FALSE
    } else {
      term_id <- rstudioapi::terminalCreate(caption = "octave")
    }
  }

  rstudioapi::terminalActivate(term_id)

  if (new_term) {
    rstudioapi::terminalSend(term_id, "octave\n")
    rstudioapi::terminalSend(
      term_id,
      "% Press Alt + Control + Enter (on Windows) Or\n"
    )
    rstudioapi::terminalSend(
      term_id,
      "% Option + Command + Enter (on Mac) to execute code. \n"
    )
  }
}

#' Run Matlab Script
#' @export
run_octave <- function() {
  new_term <- TRUE

  if (length(rstudioapi::terminalList()) == 0) {
    term_id <- rstudioapi::terminalCreate(caption = "octave")
  } else {
    terms <- rstudioapi::terminalList()
    term_caption <- unlist(sapply(terms, function(x){
      rstudioapi::terminalContext(x)["caption"]
    }))
    if ("octave" %in% term_caption) {
      term_id <- terms[term_caption == "octave"]
      new_term <- FALSE
    } else {
      term_id <- rstudioapi::terminalCreate(caption = "octave")
    }
  }

  rstudioapi::terminalActivate(term_id)

  if (new_term) {
    rstudioapi::terminalSend(term_id, "octave\n")
    rstudioapi::terminalSend(
      term_id,
      "% Press Alt + Control + Enter (on Windows) Or\n"
    )
    rstudioapi::terminalSend(
      term_id,
      "% Option + Command + Enter (on Mac) to execute code. \n"
    )
  }
}
