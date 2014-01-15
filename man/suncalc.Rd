\name{suncalc}
\alias{suncalc}
\encoding{UTF-8}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sunrise and Sunset calculations
}
\description{
Calculation of Sunrise and Sunset for a specific Julian day of the year, latitude and Longitude
}
\usage{
suncalc(d, Lat = 0, Long = 0, UTC = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{d}{
  d is the day of year
}
  \item{Lat}{
  Lat is latitude in decimal degrees
}
  \item{Long}{
    Long is longitude in decimal degrees (negative == West)
}
  \item{UTC}{
    logical value, FALSE if local time, TRUE if in UTC
    Default TRUE
}
}

\value{
 The output is a list containing two fields:
   "sunrise" time for sunrise,
   "sunset"  time in decimals for sunset.
   Both are expressed with the timezone defined by the keyword UTC 
}
\references{
  Teets, D.A. 2003. Predicting sunrise and sunset times. The College Mathematics Journal 34(4):317-321.
\url{http://aa.usno.navy.mil/data/docs/RS_OneYear.php}
}
\author{
Gionata Biavati
}

%% ~Make other sections like Warning with \section{Warning }{....} ~
\section{Warning }{
For extreme latitudes in certain time of the year one can expect to do not have any sunset or sunrise.
The function will provide NaN values and generate warnings.
}

\seealso{
\code{\link{SZA}}

}
\examples{
t<-Sys.time()+seq(-3600*12,3600*12,,by=600)
t0=as.POSIXlt(Sys.time(),tz='UTC')
plot(t,90-SZA(t,Lat=0,Lon=0),main='SZA',xlab='Time',ylab='El [°deg]')
sun=suncalc(t0[['yday']],UTC=TRUE)
t0[['hour']]<-0;t0[['min']]<-0
t1<-t0;t2<-t0
t1[['hour']]=sun[['sunrise']]
t2[['hour']]=sun[['sunset']]
abline(v=as.numeric(c(t1,t2)),col=3,lwd=4)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ sun }
\keyword{ sunset }
\keyword{ sunrise }

