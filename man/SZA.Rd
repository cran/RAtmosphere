\name{SZA}
\alias{SZA}
\encoding{UTF-8}
\title{Solar Zenith Angle
}
\description{
This function provide Solar Zenith Angle for a specified time , latitude and longitude.
}
\usage{
SZA(timein = Sys.time(), Lat = 50.910335, Lon = 11.56874)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{timein}{
   default value is the system time. It will consider all entries "POSIXct" "POSIXt" and string format with time zone. It can be a vector, a scalar or a matrix.
}
  \item{Lat}{
   Scalar. Latitude in [°N] as decimal It is the latitude of the site considered.
}
  \item{Lon}{
   Scalar. Longitude in [°E] as decimal It is the longitude of the site considered.
}
}

\value{
A vector, matrix or scalar according to the input timein, with values of SZA in decimal °deg.
}
\references{
url{http://solardat.uoregon.edu/SolarRadiationBasics.html}
}
\author{
Gionata Biavati
}


\seealso{
\code{\link{suncalc}}
}
\examples{
##  calculate SZA
sza<-SZA('2010-01-01 12:00',Lat=0,Lon=0)
t<-Sys.time()+seq(-3600*12,3600*12,,by=1800)
plot(t,SZA(t,Lat=0,Lon=0),
       main='SZA',
       xlab='Time',
       ylab='SZA [°deg]')
}

\keyword{ solar }
\keyword{ zenith }
\keyword{ angle }
