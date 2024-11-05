#' Do nothing
#'
#' @param data A data frame.
#' @param unused Unused.
#'
#' @return `data`
#' @export
#'
#' @examples
#' data <- datasets::BOD
#' do_nothing(data)
do_nothing <- function(data) {
  data
}

abort_if_not_data_frame <- function(data) {
  if (!is.data.frame(data)) {
     badclass <- toString(class(data))

     cli::cli_abort(c(
      "Must be a data frame",
      x = "It's a {badclass}",
      i = "Do you need to check with {.code is.data.frame()}?"
    ))
  }

  invisible(data)
}
