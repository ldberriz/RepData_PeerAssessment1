## Function to generate a data frame where the NA values have been
# replaced by the mean of the values fo rthat interval

fill.data <- function() {
  dta.filled <- dta  # Create a data frame dta.filled to save the data with the missing values filled.
  for (i in (1:nrow(dta.filled)))
    if (is.na(dta.filled[i,"steps"])) {   # Check the value for steps is missing
      t1 <- dta.filled[i,"interval"]      # the value of that interval in t1.  Should be between 0 and 2355
      # Use the index t2 to map into the correct row of the steps.interval data frame that 
      # has the value of the means for each interval.
      t2 <- steps.interval[(steps.interval$interval==t1),"steps"]  
      dta.filled[i,"steps"] <- t2         # Fill the missing data.
      # print(paste(i, dta.filled[i,"steps"]))  # Debug code
    }
  dta.filled  # Return object
  }


