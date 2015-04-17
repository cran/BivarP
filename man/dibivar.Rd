\name{dibivar}
\alias{dibivar}
\title{
Probability distribution function values based the Archimedean copula
}
\description{
Computes the probability distribution function values based
the Archimedean copula on the grid of \code{x} and \code{y} vectors.
}
\usage{
dibivar(x, y, par, afa, rodina, fam)
}
\arguments{
 \item{x}{numeric vector}
 \item{y}{numeric vector}
 \item{par}{vector of this values: \cr
  \code{par[1]}, \code{par[3]} are \code{shape} for the Weibull and the Gamma
  distributions or \code{mean} for the Normal distribution or \code{meanlog}
  for the Lognormal ditribution. \cr
  par[2], par[4] are \code{scale} for the Weibull and the Gamma distributions
  or \code{sd} for the Normal distribution
  or \code{sdlog} for the Lognormal ditribution.
 }
 \item{afa}{copula parameter}
 \item{rodina}{vector of length 2 of names of the marginal distributions.
  Distributions can be "weibull", "gamma", "norm", "lnorm".
  "norm" is the name for the Normal distribution.
  "lnorm" is the name for the Lognormal distribution.}
 \item{fam}{name of copula. It can be "gumbel", "clayton", "frank".}
}
\value{
Returns an array of values of the probability distribution function.
}
\author{
Josef Brejcha
}
\examples{
x <- seq(0, 100, 5)
y <- seq(0, 100, 4)
pxy <- dibivar(x, y, c(1.5, 50, 1.3, 50), 5, c("weibull", "weibull"), "gumbel")
colnames(pxy) <- x
rownames(pxy) <- y
contour(y, x, pxy, xlab="y", ylab="x")
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
