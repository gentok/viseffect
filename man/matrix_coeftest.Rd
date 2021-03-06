% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrix_est.R
\name{matrix_coeftest}
\alias{matrix_coeftest}
\title{Export Matrix (Data.Frame) of Coefficients Test}
\usage{
matrix_coeftest(
  m,
  vcov.est = NULL,
  robust.type = "HC1",
  cluster.var = NULL,
  boot.sims = 500,
  boot.seed = 578,
  ncores = "auto",
  ...
)
}
\arguments{
\item{m}{A single model object.}

\item{vcov.est}{Alternative variance-covariance matrix. The value must be one of 
raw variance-covariance matrix, \code{"robust"}, \code{"boot"}, or \code{NULL} (default).
If \code{"robust"}, robust standard error is calculated according to \code{robust.type}.
If \code{"boot"}, bootstrapped standard error calculated by \code{\link[car]{Boot}} function is used.
Ignored if \code{NULL} (default) or the \code{m} is not model object. Must have the same length as \code{m} if it is a list.}

\item{robust.type}{The type of robust standard error (applied only when \code{vcov.est=="robust"}).}

\item{cluster.var}{A \code{vector}, \code{matrix}, or \code{data.frame} of cluster variables, where each column is a separate variable. Alternatively, a formula specifying the cluster variables to be used (see Details in \code{[multiwayvcov]{cluster.vcov}}. Applied only when \code{vcov.est=="cluster"}.)}

\item{boot.sims}{Number of iterations if bootstrap is used.}

\item{boot.seed}{Random number seed if bootstrap method is used.}

\item{ncores}{Number of cores to be used in bootstrap. If \code{"auto"}, automatically detects number of cores in computer.}

\item{...}{Additional arguments passed to \code{[sandwich]{vcovHC}}, \code{[multiwayvcov]{cluster.vcov}}, or \code{\link[car]{Boot}} depending on the value of \code{vcov.est}.}

\item{seed}{Random number seed.}
}
\description{
Export Matrix (Data.Frame) of Coefficients Test
}
