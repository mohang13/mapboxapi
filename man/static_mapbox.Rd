% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/maps.R
\name{static_mapbox}
\alias{static_mapbox}
\title{Return a static Mapbox map from a specified style}
\usage{
static_mapbox(
  style_id,
  username,
  overlay_sf = NULL,
  overlay_style = NULL,
  overlay_markers = NULL,
  longitude = NULL,
  latitude = NULL,
  zoom = NULL,
  width = 600,
  height = 400,
  bearing = NULL,
  pitch = NULL,
  scaling_factor = c("1x", "2x"),
  before_layer = NULL,
  access_token = NULL
)
}
\arguments{
\item{style_id}{The style ID}

\item{username}{Your Mapbox username}

\item{overlay_sf}{The overlay sf object (optional).  The function will convert the sf object to GeoJSON then plot over the basemap style.  Spatial data that are too large will trigger an error, and should be added to the style in Mapbox Studio instead.}

\item{overlay_style}{A named list of vectors pecifying how to style the sf overlay.  Possible names are "stroke", "stroke-width", "stroke-opacity", "fill", and "fill-opacity".  The fill and stroke color values should be specified as six-digit hex codes, and the opacity and width values should be supplied as floating-point numbers.}

\item{overlay_markers}{The prepared overlay markers (optional).  See the function \code{\link{prep_overlay_markers}} for more information on how to specify a marker overlay.}

\item{longitude}{The longitude of the map center.  If an overlay is supplied, the map will default to the extent of the overlay unless longitude, latitude, and zoom are all specified.}

\item{latitude}{The latitude of the map center.  If an overlay is supplied, the map will default to the extent of the overlay unless longitude, latitude, and zoom are all specified.}

\item{zoom}{The map zoom.  The map will infer this from the overlay unless longitude, latitude, and zoom are all specified.}

\item{width}{The map width; defaults to 600px}

\item{height}{The map height; defaults to 600px}

\item{bearing}{The map bearing; defaults to 0}

\item{pitch}{The map pitch; defaults to 0}

\item{scaling_factor}{The scaling factor of the tiles; either \code{"1x"} (the default) or \code{"2x"}}

\item{before_layer}{A character string that specifies where in the hierarchy of layer elements the overlay should be inserted.  The overlay will be placed just above the specified layer in the given Mapbox styles.}

\item{access_token}{Your Mapbox access token; can be set with \code{mb_access_token()}.}
}
\value{
A pointer to an image of class \code{"magick-image"}.  The resulting image can be manipulated further with functions from the magick package.
}
\description{
Return a static Mapbox map from a specified style
}
