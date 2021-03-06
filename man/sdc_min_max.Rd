% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sdc_extreme.R
\name{sdc_min_max}
\alias{sdc_min_max}
\title{Calculate RDC rule-compliant extreme values}
\usage{
sdc_min_max(
  data,
  id_var = getOption("sdc.id_var"),
  val_var,
  by = NULL,
  max_obs = nrow(data)
)
}
\arguments{
\item{data}{\link{data.frame} from which the descriptive statistics are
calculated.}

\item{id_var}{\link{character} The name of the id variable. Defaults to \code{ getOption("sdc.id_var")} so that you can provide \code{options(sdc.id_var = "my_id_var")} at the top of your script.}

\item{val_var}{\link{character} vector of value variables on which descriptive
statistics are computed.}

\item{by}{\link{character} vector of grouping variables.}

\item{max_obs}{\link{integer} The maximum number of observations used to calculate
the minimum and maximum. Defaults to \code{nrow(data)}. \emph{This is not the number
of distinct entities.}}
}
\value{
A list \link{list} of class \code{sdc_min_max} with detailed information about
options, settings and the calculated extreme values (if possible).
}
\description{
Checks if calculation of extreme values comply to RDC rules. If
so, function returns average min and max values according to RDC rules.
}
\examples{
sdc_min_max(sdc_min_max_DT, id_var = "id", val_var = "val_1")
sdc_min_max(sdc_min_max_DT, id_var = "id", val_var = "val_2")
sdc_min_max(sdc_min_max_DT, id_var = "id", val_var = "val_3", max_obs = 10)
sdc_min_max(sdc_min_max_DT, id_var = "id", val_var = "val_1", by = "year")
sdc_min_max(
  sdc_min_max_DT, id_var = "id", val_var = "val_1", by = c("sector", "year")
)
}
