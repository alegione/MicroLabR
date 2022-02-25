#' Inoculum calculator
#'
#' Calculate the required dilutions for a given inoculation concentration. If replicates are provided then the returned volumes are the total for all replicates summed.
#'
#' @param stockTitre The titre/concentration of your stock
#' @param inoculumTitre The desired inoculum titre/concentration
#' @param inoculumVolume The amount of inoculum that is going to be added to a flask/well
#' @param replicates The total number of replicates that inoculum needs to be prepared for (default = 1)
#' @param margin The additional percentage of inoculum volume that should be prepared as a margin of error (default = 10)
#'
#' @return Returns a tibble listing the desired titre, the total volume of the initial stock required, the total volume of diluent required, and the total volume.
#' @export
#'
#' @examples
#' # Basic usage
#' InoculationCalculation(stockTitre = 10^7.8, inoculumTitre = 16000000, inoculumVolume = 300, replicates = 3, margin = 0)
#' #   `Inoculum Titre` `Stock Volume` `Diluent Volume` `Total volume`
#' #   <dbl>          <dbl>            <dbl>          <dbl>
#' #   1         16000000            228              672            900
InoculationCalculation <- function(stockTitre, inoculumTitre, inoculumVolume, replicates = 1, margin = 10) {

  margin <- ifelse(margin > 1, margin / 100, margin)

  inoculumVolume <- inoculumVolume * (1 + margin)

  stockVolume <- round(inoculumTitre * inoculumVolume / stockTitre * replicates, digits = 0)

  diluentVolume <- round((inoculumVolume * replicates) - stockVolume, digits = 0)

  totalVolume <- stockVolume + diluentVolume

  InoculumTibble <- tibble::tibble("Inoculum Titre" = inoculumTitre, "Stock Volume" = stockVolume, "Diluent Volume" = diluentVolume, "Total volume" = totalVolume)

  return(InoculumTibble)
}
