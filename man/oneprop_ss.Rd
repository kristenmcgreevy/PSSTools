% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oneprop_ss.R
\name{oneprop_ss}
\alias{oneprop_ss}
\title{One proportion sample size calculation}
\usage{
oneprop_ss(
  p0,
  pA,
  alpha,
  power,
  method = "conditional",
  one.or.two.sided = "two"
)
}
\arguments{
\item{p0}{Null hypothesis proportion.}

\item{pA}{Alternative hypothesis proportion.}

\item{alpha}{Significance level.}

\item{power}{Power level as a decimal (0.8 for 80 percent power).}

\item{method}{Either "conditional" or "unconditional" method for calculation. Default is conditional.}

\item{one.or.two.sided}{Either "one" or "two" to specify a one or two sided hypothesis test. Default is two-sided.}
}
\value{
Returns n, the sample size needed for a one proportion test.
}
\description{
Calculate sample size requirements for one proportion using the conditional
or unconditional method.
}
\examples{
# Example 5.1: Calculate sample size needed for experimental therapy
# to be considered promising (at least 20\%) if the true proportion of
# responders is 0.3. Using a one-sided test with significance at 0.05
# and power at 0.8.
oneprop_ss(p0 = 0.2, pA = 0.3, alpha = 0.05, power = 0.8,
           method = "conditional", one.or.two.sided = "one")
oneprop_ss(p0 = 0.2, pA = 0.3, alpha = 0.05, power = 0.8,
           method = "unconditional", one.or.two.sided = "one")
# Example 5.2: Same set up as above, but now the criteria are promising
# at 0.4 and true response is 0.5.
oneprop_ss(p0 = 0.4, pA = 0.5, alpha = 0.05, power = 0.8,
           method = "unconditional", one.or.two.sided = "one")
oneprop_ss(p0 = 0.4, pA = 0.5, alpha = 0.05, power = 0.8,
           method = "conditional", one.or.two.sided = "one")
}
