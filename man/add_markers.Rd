% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/google_map_layers.R
\name{add_markers}
\alias{add_markers}
\title{Add markers}
\usage{
add_markers(map, data = get_map_data(map), id = NULL, colour = NULL,
  lat = NULL, lon = NULL, title = NULL, draggable = NULL,
  opacity = NULL, label = NULL, cluster = FALSE, info_window = NULL,
  mouse_over = NULL, mouse_over_group = NULL, layer_id = NULL)
}
\arguments{
\item{map}{a googleway map object created from \code{google_map()}}

\item{data}{data frame containing at least two columns, one specifying the latitude coordinates, and the other specifying the longitude. If Null, the data passed into \code{google_map()} will be used.}

\item{id}{string specifying the column containing an identifier for a marker}

\item{colour}{string specifying the column containing the 'colour' to use for the markers. One of 'red', 'blue', 'green' or 'lavender'.}

\item{lat}{string specifying the column of \code{data} containing the 'latitude' coordinates. If left NULL, a best-guess will be made}

\item{lon}{string specifying the column of \code{data} containing the 'longitude' coordinates. If left NULL, a best-guess will be made}

\item{title}{string specifying the column of \code{data} containing the 'title' of the markers. The title is displayed when you hover over a marker. If blank, no title will be displayed for the markers.}

\item{draggable}{string specifying the column of \code{data} defining if the marker is 'draggable' (either TRUE or FALSE)}

\item{opacity}{string specifying the column of \code{data} defining the 'opacity' of the maker. Values must be between 0 and 1 (inclusive).}

\item{label}{string specifying the column of \code{data} defining the character to appear in the centre of the marker. Values will be coerced to strings, and only the first character will be used.}

\item{cluster}{logical indicating if co-located markers should be clustered when the map zoomed out}

\item{info_window}{string specifying the column of data to display in an info window when a polygon is clicked}

\item{mouse_over}{string specifying the column of data to display when the mouse rolls over the polygon}

\item{mouse_over_group}{string specifying the column of data specifying which groups of circles to highlight on mouseover}

\item{layer_id}{single value specifying an id for the layer.}
}
\description{
Add markers to a google map
}
\examples{
\dontrun{

df <- structure(list(lat = c(-37.8201904296875, -37.8197288513184,
-37.8191299438477, -37.8187675476074, -37.8186187744141, -37.8181076049805
), lon = c(144.968612670898, 144.968414306641, 144.968139648438,
144.967971801758, 144.967864990234, 144.967636108398), weight = c(31.5698964400217,
97.1629025738221, 58.9051092562731, 76.3215389118996, 37.8982300488278,
77.1501972114202), opacity = c(0.2, 0.2, 0.2, 0.2, 0.2, 0.2)), .Names = c("lat",
"lon", "weight", "opacity"), row.names = 379:384, class = "data.frame")

library(magrittr)
google_map(key = map_key, data = df) \%>\%
 add_markers(lat = "lat", lon = "lon")

}
}

