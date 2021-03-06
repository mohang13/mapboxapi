% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/maps.R
\name{addMapboxTiles}
\alias{addMapboxTiles}
\title{Use a Mapbox style in a Leaflet map}
\usage{
addMapboxTiles(
  map,
  style_id,
  username,
  scaling_factor = c("1x", "0.5x", "2x"),
  access_token = NULL,
  layerId = NULL,
  group = NULL,
  options = leaflet::tileOptions(),
  data = leaflet::getMapData(map)
)
}
\arguments{
\item{map}{A map widget object created by \code{leaflet::leaflet()}}

\item{style_id}{The style ID of your Mapbox style}

\item{username}{Your Mapbox username}

\item{scaling_factor}{The scaling factor to use when rendering the tiles.  A scaling factor of 1 (the default) returns 512px by 512px tiles.  A factor of \code{0.5} returns 256x256 tiles, and a factor of \code{2} returns 1024x1024 tiles.}

\item{access_token}{Your Mapbox access token; can be set with \code{mb_access_token()}.}

\item{layerId}{the layer ID}

\item{group}{The name of the group the Mapbox tile layer should belong to (for use in Shiny and to modify layers control in a Leaflet workflow)}

\item{options}{A list of extra options (optional)}

\item{data}{The data object used to derive argument values; can be provided to the initial call to \code{leaflet::leaflet()}}
}
\value{
A pointer to the Mapbox Static Tiles API which will be translated appropriately by the leaflet R package.
}
\description{
Use a Mapbox style in a Leaflet map
}
