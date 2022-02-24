#' Plasmid copy calculator
#'
#' @param plasmidLength The length of the plasmid in base pairs
#' @param insertLength The length of your insert in base pairs
#' @param totalLength A combined total length of your plasmid and insert in base pairs, use this instead of plasmidLength and insertLength individually
#' @param weight The mass of your DNA as measured by spectrophotometer or other method, in nanograms
#'
#' @return a number
#' @export
#'
#' @examples
#' PlasmidCopies(totalLength = 3460, weight = 5.9)
#' 1555867928
#'
#' PlasmidCopies(plasmidLength = 3000, insertLength = 460, weight = 5.9)
#' 1555867928
#'
PlasmidCopies <- function(plasmidLength, insertLength, totalLength, weight) {
  ifelse(test = missing(totalLength), yes = length <- plasmidLength + insertLength, no = length <- totalLength)
  weight * (10^-9)/(length * 660) * (6.022 * 10^23)
}
