% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/links.R
\name{add_links}
\alias{add_links}
\title{Add links}
\usage{
add_links(x, ...)
}
\arguments{
\item{x}{link data convertible to a link layout}

\item{...}{link tables, possibly named, i.e. blast=blast_df, domains=domain_df}

\item{.dots}{superceed dots with a list of arguments.}
}
\description{
Add links
}
\examples{
gggenomes \%>\%
  add_links(links_df)
}
