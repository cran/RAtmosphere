\name{betamol}
\alias{betamol}
\encoding{UTF-8}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Molecular backscatter coefficient
}
\description{
Calculation of atmospheric molecular backscatter coefficient at specified pressure, temperature and wavelength.
}
\usage{
betamol(P, T, lambda = 1064)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{P}{
    Pressure in hPa. can be scalr, vector or matrix of the same dimension of T.
}
  \item{T}{
 Temperature in °k. can be scalr, vector or matrix of the same dimension of P.
}
  \item{lambda}{
    Scalar value in nm. It represent the wavelength of incident light.
}
}

\value{
Return according to the dimension of P and T returns the backscatter coefficent [1/m 1/sr] for the specified wavelength lambda.
}

\author{
Gionata Biavati
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{standard_atmosphere}}
\code{\link{betamol_standard}}
}
\examples{
##
  lambda=1064 #nm
  z<-10*(0:1000)
 bm<-betamol(standard_atmosphere(z,vout=2,T0=T0,P0=P0,R0=R0)/100,standard_atmosphere(z,vout=1,T0=T0,P0=P0,R0=R0),lambda=lambda)
 plot(bm,z,type='l',col=4,lwd=3,xlab='Backscatter Coefficent [1/(m sr)]',ylab='Altitude [m]',main ='backscatter coefficient')

}

\keyword{ molecular }
\keyword{ backscatter }
\keyword{ betamol }
\keyword{ atmosphere }
\keyword{ lidar }
\keyword{ calibration }

