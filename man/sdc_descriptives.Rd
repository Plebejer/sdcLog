% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sdc_descriptives.R
\name{sdc_descriptives}
\alias{sdc_descriptives}
\title{Check if your descriptive statistics comply to statistical disclosure control.}
\usage{
sdc_descriptives(data, id_var, val_var, by = NULL)
}
\arguments{
\item{data}{\link{data.frame} from which the descriptives are calculated.}

\item{id_var}{\link{character} The name of the id variable.}

\item{val_var}{\link{character} vector of value variables on which descriptives
are computed.}

\item{by}{Grouping variables (or expression). Can be provided as in
\code{\link[data.table:data.table]{data.table::data.table()}}.}
}
\description{
Check if your descriptive statistics comply to statistical disclosure control.
}