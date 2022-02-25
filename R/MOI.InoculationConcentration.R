#' MOI Inoculation Concentration Calculator
#'
#' Calculates the required concentration of your inoculum to achieve a desired multiplicity of infection (MOI) based on the cells available for infection
#'
#' @param surfaceArea The surface area, in square centimetres, of the flask or well being inoculated
#' @param confluence The confluence of the cells at the time of infection, this will be applied to the expected cells per square centimetre of a 100% confluent well/flask. Value can be either proportion (less than one) or percentage (greater than one)
#' @param cellsPercm The expected cells per square centimetre in a 100% confluent flask/well
#' @param MOI The desired multiplicity of infection
#' @param inoculationVolume  The intended volume of the inoculum, in microlitres
#'
#' @return number
#' @export
#'
#' @examples
#'
#' MOI.InoculationConcentration(surfaceArea = 9.6,confluence = 1, cellsPercm = 10000, MOI = 5, inoculationVolume = 300)
#' 1600000
#'
#'
MOI.InoculationConcentration <- function(surfaceArea, confluence, cellsPercm, MOI, inoculationVolume) {

  confluence <- ifelse(confluence > 1, confluence / 100, confluence)

  totalCells <- surfaceArea * confluence * cellsPercm

  VirusPerWell <- totalCells* MOI

  RequiredConcentration <- 1 / (inoculationVolume / 1000) * VirusPerWell

  return(RequiredConcentration)
}
