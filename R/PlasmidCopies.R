PlasmidCopies <- function(plasmidLength, insertLength, totalLength, weight) {
  ifelse(test = missing(totalLength), yes = length <- plasmidLength + insertLength, no = length <- totalLength)
  weight * (10^-9)/(length * 660) * (6.022 * 10^23)
}
