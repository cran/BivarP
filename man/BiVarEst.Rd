\name{BiVarEst}
\alias{BiVarEst}
\title{
Estimation of the parameters of the bivariate distribution function
of the Archimedean copula family.
}
\description{
Estimation the parameters of the bivariate
distribution function of the Archimedean copula family.
}
\usage{
BiVarEst(Z, kopule = "gumbel", rodiny = c("weibull", "weibull"))
}
\arguments{
  \item{Z}{data frame with these columns:\cr
  \code{Z[, 1:2]} are numeric vectors.\cr
  \code{Z[, 3]} is an integer vector consisting of 0 or 1.
  \code{Z[i, 3] = 0}, if \code{Z[i, 1]} is censored.\cr
  Z[, 4] is an integer vector consisting of 0 or 1.
  \code{Z[i, 4] = 0}, if \code{Z[i, 2]} is censored.
  }
  \item{kopule}{a character string specifying the family
  of an Archimedean copula. Currently supported families are
  "gumbel", "clayton" and "frank".}
  \item{rodiny}{vector of length 2 of names of the marginal
  distributions. Names can be "weibull", "gamma", "norm" and "lnorm".
  "norm" is the name for the Normal distribution.
  "lnorm" is the name for the Lognormal distribution.}
}
\details{
The Weibull ("weibull") and the Gamma ("gamma") distributions have
parameters \code{shape} and \code{scale}. The Normal ("norm") distribution
has parameters \code{mean} and \code{sd}. The Lognormal ("lnorm")
distribution has parameters \code{meanlog} and \code{sdlog}.
}
\value{
A list with the following components:
\item{par}{best estimate of the parameter vector found
by the \code{\link[dfoptim]{nmkb}} function.}
\item{value}{value of the likelihood at termination.}
\item{feval	}{number of times the likelihood was evaluated.}
\item{restarts}{number of times the algorithm had to be
restarted when it stagnated.}
\item{convergence	}{an integer code indicating type of convergence.
0 indicates successful convergence. Positive integer codes
indicate failure to converge.}
\item{message}{a text message indicating the type of convergence or failure.}
}
\author{
Josef Brejcha
}
\note{
  Vector par has the structure:\cr
  \code{par[1:2]} are parameters of the first marginal distribution.\cr
  \code{par[3:4]} are parameters of the second marginal distribution.\cr
  \code{par[5]} is the parameter of the copula.
}
\examples{
rodinka <- c("weibull", "norm")
kopule <- "frank"
xweib <- c(1.75, 145, 1.30, 80, 3.5)
BcG <- BiCopGen(x = xweib, rodiny = rodinka, rodina = kopule, No=30,
cens = TRUE, bicens = FALSE, digi = 2)
Nxyd <- data.frame(X=BcG$X, Y=BcG$Y, dX=BcG$dX, dY=BcG$dY)
Bivar <- BiVarEst(Nxyd, kopule = kopule, rodiny = rodinka)
Bivar
plot(Nxyd$Y, Nxyd$X, type="n", xlab="Y", ylab="X",
xlim=c(min(0, min(Nxyd$Y)), max(Nxyd$Y)),
ylim=c(min(0, min(Nxyd$X)),max(Nxyd$X)))
points(Nxyd$Y, Nxyd$X, col=ifelse(Nxyd$dX==1 & Nxyd$dY==1, "black",
ifelse(Nxyd$dX==0 & Nxyd$dY==1, "red", ifelse(Nxyd$dX==1 & Nxyd$dY==0,
"blue", "green"))), pch=20)
legend("topleft",c("dX, dY","1,1", "0,1", "1,0", "0,0"),
text.col=c("black", "black", "red", "blue", "green"), bty = "n")
grid(col = "grey50")
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
