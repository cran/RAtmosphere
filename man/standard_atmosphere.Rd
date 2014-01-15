\name{standard_atmosphere}
\alias{standard_atmosphere}
\encoding{UTF-8}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Standard Atmosphere calculations
}
\description{
This function calculate Temperature, Pressure and Density of air at a fixed quota, according to ground temperature, density and pressure. The profile is a standard atmospheric profile according to 1976 Standard Atmosphere.
}
\usage{
standard_atmosphere(z, vout = 3, T0 = 288.15, P0 = 101325, R0 = 1.225)
}

\arguments{
  \item{z}{
 Altitude over see level in meters. It can be Vector, Matrix or scalar value.
}
  \item{vout}{
   possible vaues are:
           1 for temperature (output in °K)
           2 for pressure (output in Nm\eqn{^-2}
           3 for density (output in kgm\eqn{^-3})
}
  \item{T0}{
    Scalar value. Temperature at see level [°K].
}
  \item{P0}{
    Scalar value. Pressure at see level  [Pa].
  }
  \item{R0}{
    Scalar value. Density at see level  [kgm\eqn{^-3}].
  }
}

\value{
According to input z the function will return a Vector, a Matrix or a Scalar value, according to the specified vout.
}
\references{
 \url{http://scipp.ucsc.edu/outreach/balloon/atmos/1976 Standard Atmosphere.htm}

}
\author{
Gionata Biavati
}
\note{
This function is general, no latitude-longitude or seasonal specification. 
It is necessary to evaluate a standard backscatter profile.
}

\seealso{
\code{\link{betamol_standard}}
}
\examples{
z<-100*(0:100)
par(mfrow=c(1,3))
plot(standard_atmosphere(z,vout=1),z,main='Temperature',ylab='Altitude [m]',xlab='[°K]')
plot(standard_atmosphere(z,vout=2),z,main='Pressure',ylab='Altitude [m]',xlab='[N/m2]')
plot(standard_atmosphere(z,vout=3),z,main='Density',ylab='Altitude [m]',xlab='[kg/m3]')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ atmosphere }
\keyword{ pressure }
\keyword{ temperature }
\keyword{ density }
