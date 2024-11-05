#' Do nothing
#'
#' @param data A data frame.
#'
#' @return `data`
#' @export
#'
#' @examples
#' data <- datasets::BOD
#' do_nothing(data)
do_nothing <- function(data) {
  abort_if_not_data_frame(data)
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
