#' Plasmid copy calculator
#'
#' Calculate the copies of a vector plasmid based on insert and plasmid length. Note that the function uses 660 g/mol as the default DNA weight.
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
#' # Calculate values with the total length
#' PlasmidCopies(totalLength = 3460, weight = 5.9)
#' # 1555867928
#'
#' # Calculate values with the individual plasmid and insert lengths
#' PlasmidCopies(plasmidLength = 3000, insertLength = 460, weight = 5.9)
#' # 1555867928
#'
PlasmidCopies <- function(plasmidLength, insertLength, totalLength, weight) {

  ifelse(test = missing(totalLength), yes = length <- plasmidLength + insertLength, no = length <- totalLength)

  # TODO provide option to read in FASTA file and get exact DNA weight rather than using the default 660

  copies <- weight * (10^-9)/(length * 660) * (6.02214076 * 10^23)

  return(copies)
}
