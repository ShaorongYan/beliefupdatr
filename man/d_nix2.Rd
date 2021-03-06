% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nix.R
\name{d_nix2}
\alias{d_nix2}
\title{Probability density function for NIX2 distribution}
\usage{
d_nix2(mv, p, log = FALSE)
}
\arguments{
\item{mv}{Matrix of mean-variance pairs, means in the first column and
variances in the second.}

\item{p}{NIX2 parameters.}

\item{log}{FALSE to return probability (default), TRUE for log-probability.}
}
\value{
The (log-)probability density for each row of \code{mv}.
}
\description{
Probability density function for NIX2 distribution
}

