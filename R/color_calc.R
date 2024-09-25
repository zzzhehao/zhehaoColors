#' @export
light_calc <- function(hex, factor) {
    rgb <- as.vector(col2rgb(hex)[,1]) * (1+factor)
    if (any(rgb > 255)) {
        warningCondition("Calculated color exceeds max value (255), set to 255")
        rgb[rgb > 255] = 255
        }
    return(rgb(rgb[1], rgb[2], rgb[3], maxColorValue = 255))
}