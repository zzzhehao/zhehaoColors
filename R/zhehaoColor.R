source('R/palettes.R')

#' Generate Palette
#' @description 
#' Color palettes extracted from my [photographs](https://zzzhehao.github.io/gallery/gallery.html).
#' @param palette_id Name of Palette. Complete list of acceptable IDs can be found on Github.
#' @param n Number of Colors. If not specified, original palette will return, if n exceeds original palette, colors are automatically interpolated.
#' @export
zhehaoColor <- function(palette_id, n){
  palette <- palettes[[palette_id]]
  pl <- length(palette)
  if (!missing(n)) {
    return(palette)
  } else if (n > pl) {
    color_ramp <- grDevices::colorRampPalette(palette)
    return(color_ramp(n))
  } else {
    return(palette[1:n])
  }
}

