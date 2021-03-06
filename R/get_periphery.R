#' Get nodes that form the graph periphery
#' @description Get those nodes that are part of the
#' graph periphery (i.e., have the maximum eccentricity
#' in the graph).
#' @param graph a graph object of class
#' \code{dgr_graph}.
#' @return a vector of node IDs.
#' @examples
#' \dontrun{
#' # Get the nodes that are in the graph periphery of
#' # a randomly-created graph
#' get_periphery(
#'   create_random_graph(
#'     15, 24,
#'     fully_connected = TRUE,
#'     set_seed = 20))
#' #> [1] "13"
#' }
#' @export get_periphery

get_periphery <- function(graph) {

  # Get the eccentricity for each of the graph's nodes
  eccentricity <- get_eccentricity(graph)

  # Return the node IDs for all nodes where the
  # eccentricity is equal to the graph diameter
  # (i.e., maximum eccentricity)
  return(names(
    eccentricity[
      which(eccentricity %in%
              max(eccentricity))]))
}
