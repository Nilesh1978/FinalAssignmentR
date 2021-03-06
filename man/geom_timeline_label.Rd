% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Geoms.R
\name{geom_timeline_label}
\alias{geom_timeline_label}
\title{Geom to create labels for earthquakes on a timeline}
\usage{
geom_timeline_label(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", na.rm = FALSE, n_max = NULL, show.legend = NA,
  inherit.aes = TRUE, ...)
}
\arguments{
\item{mapping}{The mapping}

\item{data}{The data}

\item{stat}{The stat}

\item{position}{The position}

\item{na.rm}{The na}

\item{n_max}{The number of the largest earthquakes to be labelled}

\item{show.legend}{The legend}

\item{inherit.aes}{The aesthetics}

\item{...}{Et all}
}
\description{
This geom plots labels with a certain number of largest (by size) earthquake on a timeline.
The timeline is created by \code{geom_timeline}
}
\examples{
\dontrun{
data \%>\% eq_clean_data() \%>\%
   filter(COUNTRY \%in\% c("CHINA", "USA"), YEAR > 2000) \%>\%
   ggplot(aes(x = DATE, y = COUNTRY, colour = TOTAL_DEATHS, size = EQ_PRIMARY)) +
   geom_timeline() +
   geom_timeline_label(aes(label = LOCATION_NAME), n_max = 5) +
   theme_timeline() +
   labs(size = "Richter scale value", colour = "# deaths")
}

}
