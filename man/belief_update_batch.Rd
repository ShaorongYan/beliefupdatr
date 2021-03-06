% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/belief.R
\name{belief_update_batch}
\alias{belief_update_batch}
\title{Update beliefs in a data frame in batches}
\usage{
belief_update_batch(d, cue, categories, trials, at, beliefs)
}
\arguments{
\item{d}{Data frame with cue values and categories}

\item{cue}{Quoted name of column of data frame with cue values}

\item{categories}{Quoted name of column with known category labels.}

\item{trials}{Quoted name of column with trial numbers to define batches}

\item{at}{Trial numbers to get updated beliefs}

\item{beliefs}{Named list of starting belief NIX^2 parameters. Names must
match unique values of \code{d[[categories]]}}
}
\value{
A data_frame with updated NIX2 parameters in \code{beliefs} for the
  values of \code{d[[trials]]} from \code{at}. \code{d$beliefs} is a list
  column where each element is a named list of category belief parameters
}
\description{
Update beliefs in a data frame in batches
}
\examples{
d <- data.frame(x = rnorm(100, 3),
                c = sample(c('a', 'b'), 100, replace=TRUE),
                trial = 1:100)
belief_update_batch(d, 'x', 'c', 'trial', seq(10, 100, by=10),
                    list(a = nix2_params(0, 0, 10, 10),
                         b = nix2_params(0, 0, 10, 10)))

}
\seealso{
\code{\link{belief_update}} for fully incremental,
  observation-by-observation belief updating.
}

