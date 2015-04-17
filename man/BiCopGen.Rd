\name{BiCopGen}
\alias{BiCopGen}
\title{
Random sample generation of variables \code{X} and \code{Y} marginal
distributions for the Archimedean copula
}
\description{
Generates a random sample of variables \code{X} and \code{Y}
of the marginal distribution for the Archimedean copula. \code{X} and \code{Y}
are of the same size and can be censored.
}
\usage{
BiCopGen(x, rodiny = c("weibull", "weibull"), rodina = "gumbel", No,
    cens = TRUE, bicens = TRUE, digi = 0)
}
\arguments{
 \item{x}{vector of these parameters: \cr
  \code{x[1], x[3]} \code{shape} ("weibull" or "gamma")
  or \code{mean} ("norm") or \code{meanlog} ("lognormal") \cr
  \code{x[2], x[4]} \code{scale} ("weibull" or "gamma")
  or \code{sd} ("norm") or \code{sdlog} ("lognormal") \cr
  \code{x[5]} copula parameter
 }
  \item{rodiny}{vector of length 2 of names of the marginal distributions.
  Distributions can be "weibull", "gamma", "norm", "lnorm".
  "norm" is the name for the Normal distribution.
  "lnorm" is the name for the Lognormal distribution.}
  \item{rodina}{copula family. Currently supported families
  are "gumbel", "clayton" and "frank".}
  \item{No}{sample size}
  \item{cens}{cens = TRUE ... censored sample}
  \item{bicens}{if both \code{bicens} and \code{cens} are \code{TRUE},
  both \code{X} and \code{Y} are censored.\cr
 If \code{cens} is \code{TRUE} and \code{bicens} is \code{FALSE},
 one of the \code{X} or \code{Y} can be uncensored}
  \item{digi}{number of decimal places in the output \code{X} and \code{Y}}
}
\details{
Random censoring using distribution function having the same
specifications as the original uncensored distribution.
}
\value{
A list with the following components:
\item{X, Y}{vectors sizes of \code{No} and having
\code{digi} number of decimal places.}
\item{dX}{vector size of \code{No} and consisting of 0 or 1.
If \code{X[i]} is censored, \code{dX[i] = 0}.}
\item{dY}{Vector size of \code{No} and consisting of 0 or 1.
If \code{Y[i]} is censored, \code{dY[i] = 0}.}
}
\author{
Josef Brejcha
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
