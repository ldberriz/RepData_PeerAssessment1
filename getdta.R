getdta <- function() {
  cacheFile <- "activity.csv"
  dta <- read.csv(cacheFile)
  dta$date <- strptime(dta$date, "%Y-%m-%d")  ## Convert the date to POSIX
  dta
}

