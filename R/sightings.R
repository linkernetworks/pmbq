#' Pokemon Sightings in Taiwan Grouped in Grid Cells
#'
#' Average daily sightings in Taiwan between
#' sampling period.
#'
#' \describe{
#'  \item{cell_x}
#'  \item{cell_y}
#'  \item{avg_cnt}{average count}
#'  \item{x}{longitude}
#'  \item{y}{latitude}
#'  }
#'
"sightings_grid_latlon"

#' Daily Pokemon Sightings Count
#'
#' Pokemon daily sightings in Taiwan between
#' sampling period.
"daily_pm_count"

#' Pokemon Sightings Frequencies
#'
#' Derived from daily_pm_count
"pm_freq"

#' Hourly Pokemon Sightings Count
#'
#' Derived from daily_pm_count
#'
#' \describe{
#'  \item{pokemonId}
#'  \item{hour_created}{UTC+8}
#'  \item{cnt}{count}
#'  }
"pm_count_by_hour"

#' Hourly Pokemon Sightings Frequencies
#'
#' Derived from pm_count_by_hour
#'
#' \describe{
#'  \item{pokemonId}
#'  \item{hour_created}{UTC+8}
#'  \item{cnt}{count}
#'  \item{freq}{frequencies}
#' }
"pm_freq_by_hour"

#' All Clefairy Sightings in Taipei City
#'
#' \describe{
#'  \item{pokemonId}
#'  \item{longitude}
#'  \item{latitude}
#'  \item{created}
#'  \item{dup_cnt}{duplication count, ignore
#'  this column since it was used to rule out the data
#'  duplication during the collecting process.}
#' }
"clefairy"

#' All Snorlax Sightings in Taiwan
#'
#' \describe{
#'  \item{pokemonId}
#'  \item{longitude}
#'  \item{latitude}
#'  \item{created}
#'  \item{dup_cnt}{duplication count, ignore
#'  this column since it was used to rule out the data
#'  duplication during the collecting process.}
#' }
"snorlax"

#' All Dragonite Sightings in Taiwan
#'
#' \describe{
#'  \item{pokemonId}
#'  \item{longitude}
#'  \item{latitude}
#'  \item{created}
#'  \item{dup_cnt}{duplication count, ignore
#'  this column since it was used to rule out the data
#'  duplication during the collecting process.}
#' }
"dragonite"

#' All Lickitung Sightings in Taiwan
#'
#' \describe{
#'  \item{pokemonId}
#'  \item{longitude}
#'  \item{latitude}
#'  \item{created}
#'  \item{dup_cnt}{duplication count, ignore
#'  this column since it was used to rule out the data
#'  duplication during the collecting process.}
#' }
"lickitung"

#' All Chansey Sightings in Taiwan
#'
#' \describe{
#'  \item{pokemonId}
#'  \item{longitude}
#'  \item{latitude}
#'  \item{created}
#'  \item{dup_cnt}{duplication count, ignore
#'  this column since it was used to rule out the data
#'  duplication during the collecting process.}
#' }
"chansey"

