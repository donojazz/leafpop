% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addPopupGraphs.R
\name{addPopupGraphs}
\alias{addPopupGraphs}
\title{Add graph/plot popups to leaflet layers.}
\usage{
addPopupGraphs(map, graph, group, width = 300, height = 300)
}
\arguments{
\item{map}{the \code{leaflet} map to add the popups to.}

\item{graph}{A \code{list} of lattice or ggplot2 objects. Needs to be a list,
even for a single plot!}

\item{group}{the map group to which the popups should be added.}

\item{width}{the width of the graph(s) in pixels.}

\item{height}{the height of the graph(s) in pixels.}
}
\value{
A \code{leaflet} map.
}
\description{
Add graph/plot popups to leaflet layers.
}
\examples{
if (interactive()) {
library(sf)
library(leaflet)

pt = data.frame(x = 174.764474, y = -36.877245)
pt = st_as_sf(pt, coords = c("x", "y"), crs = 4326)

p2 = levelplot(t(volcano), col.regions = terrain.colors(100))

leaflet() \%>\%
  addTiles() \%>\%
  addCircleMarkers(data = pt, group = "pt") \%>\%
  addPopupGraphs(list(p2), group = "pt", width = 300, height = 400)

}

}
