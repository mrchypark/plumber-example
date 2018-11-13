#* @apiTitle Plumber Example API

library(dygraphs)
#' @get /spots/<from>/<to>/graph
#' @serializer htmlwidget
function(from, to){
  dygraph(datasets::sunspots, main = "썬스팟 데이터 셋") %>%
    dyRangeSelector(dateWindow = c(
      paste0(from, "-01-01"),
      paste0(to, "-12-31")
    ))
}
