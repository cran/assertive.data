% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert-is-data.R, R/is-data.R
\name{assert_all_are_cas_numbers}
\alias{assert_all_are_cas_numbers}
\alias{assert_any_are_cas_numbers}
\alias{is_cas_number}
\title{Does the character vector contain CAS registry numbers?}
\usage{
assert_all_are_cas_numbers(x, na_ignore = FALSE,
  severity = getOption("assertive.severity", "stop"))

assert_any_are_cas_numbers(x, na_ignore = FALSE,
  severity = getOption("assertive.severity", "stop"))

is_cas_number(x)
}
\arguments{
\item{x}{Input to check.}

\item{na_ignore}{A logical value.  If \code{FALSE}, \code{NA} values
cause an error; otherwise they do not.  Like \code{na.rm} in many
stats package functions, except that the position of the failing
values does not change.}

\item{severity}{How severe should the consequences of the assertion be?
Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.}
}
\value{
A logical vector that is \code{TRUE} when the input contains valid  
CAS registry numbers.
}
\description{
Checks that the input contains Chemical Abstract Service registry numbers.
}
\note{
CAS numbers take the form of 1 to 7 digits followed by a hyphen,  
followed by 2 digits, another hyphen and a final check digit.
}
\examples{
x <- c(
  water            = "7732-18-5", 
  d_glucose        = "50-99-7",
  l_glucose        = "921-60-8",
  no_hyphens       = "7732185", 
  two_check_digits = "7732-18-55",
  bad_check_digit  = "7732-18-4",
  missing          = NA
)
is_cas_number(x)
assert_any_are_cas_numbers(x)
#These examples should fail.
assertive.base::dont_stop(assert_all_are_cas_numbers(x))
}
\references{
Chemspider (\url{https://www.chemspider.com}) is a good service 
for looking up CAS numbers.
}
