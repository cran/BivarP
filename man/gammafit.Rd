\name{gammafit}
\alias{gammafit}
\title{Estimation of parameters of the Gamma distribution
}
\description{
Likelihood estimation of parameters of the Gamma distribution.
Data can be right censored.
}
\usage{
gammafit(time, event)
}
\arguments{
 \item{time}{
  numeric vector. For right censored data, this is
  the follow up time.}
 \item{event}{status indicator vector, 0=alive, 1=dead.}
}

\value{
A list with the following components:
\item{par}{
  best estimate of parameter vector \code{c(shape, scale)}
}
\item{value}{value of the likelihood at termination.}
\item{feval}{number of times the likelihood was evaluated.}
\item{restarts}{number of times the algorithm had to be restarted
when it stagnated.}
\item{convergence}{an integer code indicating type of convergence.
0 indicates successful convergence. Positive integer codes indicate failure
to converge.}
\item{message}{a text message indicating the type of convergence or failure.}
}

\author{ Josef Brejcha}
\examples{
n <- 30
t <- rgamma(n, shape=2, scale=100)
ev <- round(runif(n), 0)
gammafit(t, ev)
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
