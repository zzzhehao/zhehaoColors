#' A Transparent ggplot Theme
#' 
#' @export
zhehaoplot_transparent <- function(base_family = "serif", ...){
    theme_minimal(base_family = base_family, ...) +
    theme(
        panel.background = element_rect(fill = "transparent", color = NA),
        plot.background = element_rect(fill = "transparent", color = NA),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        legend.background = element_rect(fill = "transparent", color = NA)
    )
}

#' Use ZhehaoColor Palette in ggplor Object.
#' @export
zhehaoplot_usePalette <- function(clp = "copenhagen1", n){
    palette <- zhehaoColor(clp, n)
    list(scale_color_manual(values = palette),
    scale_fill_manual(values = palette))
}