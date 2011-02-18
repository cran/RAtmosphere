\name{RAtmosphere-package}
\alias{RAtmosphere-package}
\alias{RAtmosphere}
\encoding{UTF-8}
\docType{package}
\title{
Standard atmospheric parameters usefull for LIDAR inversion and studies
}
\description{
Several functions to retireve atmospheric profiles of Pressure, Density, Temperature, Molecular Backscatter Coefficient. Also Solar Zenit Angle, Suntet and Sunrise can be calculated direcly.
}
\details{
\tabular{ll}{
Package: \tab RAtmosphere\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-02-18\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
}
\author{
Gionata Biavati

Maintainer: Who to complain to \email{gbiavati@bgc-jena.mpg}
}
\references{
  Standard Atmosphere:
\url{http://scipp.ucsc.edu/outreach/balloon/atmos/1976 Standard Atmosphere.htm}

Solar Zenith Angle Calculations:
\url{http://solardat.uoregon.edu/SolarRadiationBasics.html}

Sunrize and Sunset:
Teets, D.A. 2003. Predicting sunrise and sunset times, The College Mathematics Journal 34(4):317-321.
}

\keyword{ package }
\keyword{ lidar }
\keyword{ atmosphere }
\keyword{ pressure }
\keyword{ temperature }
\keyword{ density }
\keyword{ backscatter coefficient }
\seealso{
\code{\link{standard_atmosphere}}
\code{\link{SZA}}
\code{\link{suncalc}}
\code{\link{betamol}}
\code{\link{betamol_standard}}
}
\examples{
require(RAtmosphere)
z<-10*(0:1000)
plot(standard_atmosphere(z,vout=2),z,xlab='Pressure Pa',ylab='Altitude [m]',main='Profile of Pressure')

}