\name{betamol_standard}
\alias{betamol_standard}
\encoding{UTF-8}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Standard Molecular Backscatter Coefficient
}
\description{
Standard Molecular Backscatter Soefficient according to Standard Atmosphere and wavelength-
}
\usage{
betamol_standard(z, lambda = 1064, T0 = 288.15, P0 = 101325, R0 = 1.225)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{z}{
   Vector, Matix or scalar of alitude over see level [m].
}
  \item{lambda}{
    Scalar value in nm. It represent the wavelength of incident light.
}
   \item{T0}{
    Scalar value. Temperature at see level [°K].
}
  \item{P0}{
    Scalar value. Pressure at see level  [Pa].
  }
  \item{R0}{
    Scalar value. Density at see level  [Kgm\eqn{^{-3}}].
  }
}

\value{
Returns according to the dimensions of z values of elastic backscatter coefficents in [1/(m sr)]
}

\author{
Gionata Biavati
}

\seealso{
\code{\link{standard_atmosphere}}
\code{\link{betamol}}
}
\examples{
  lambda=1064 #nm
  z<-10*(0:1000)
  plot(betamol_standard(z),z,type='l',col=4,lwd=3,xlab='Backscatter Coefficent [1/(m sr)]',ylab='Altitude [m]',main ='backscatter coefficient')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ standard }
\keyword{ atmosphere }
\keyword{ molecular }
\keyword{ backscatter }
\keyword{ betamol }
\keyword{ lidar }
\keyword{ calibration }


