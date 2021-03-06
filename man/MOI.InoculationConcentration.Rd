% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MOI.InoculationConcentration.R
\name{MOI.InoculationConcentration}
\alias{MOI.InoculationConcentration}
\title{MOI Inoculation Concentration Calculator}
\usage{
MOI.InoculationConcentration(
  surfaceArea,
  confluence,
  cellsPercm,
  MOI,
  inoculationVolume
)
}
\arguments{
\item{surfaceArea}{The surface area, in square centimetres, of the flask or well being inoculated}

\item{confluence}{The confluence of the cells at the time of infection, this will be applied to the expected cells per square centimetre of a 100\% confluent well/flask. Value can be either proportion (less than one) or percentage (greater than one)}

\item{cellsPercm}{The expected cells per square centimetre in a 100\% confluent flask/well}

\item{MOI}{The desired multiplicity of infection}

\item{inoculationVolume}{The intended volume of the inoculum, in microlitres}
}
\value{
number
}
\description{
Calculates the required concentration of your inoculum to achieve a desired multiplicity of infection (MOI) based on the cells available for infection
}
\examples{

MOI.InoculationConcentration(surfaceArea = 9.6,confluence = 1, cellsPercm = 10000, MOI = 5, inoculationVolume = 300)
1600000


}
