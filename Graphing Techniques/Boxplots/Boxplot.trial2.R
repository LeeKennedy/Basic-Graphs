
# set seed for random number generation to allow you to replicate my data
set.seed(1)
# set the standard deviation for the data
sd = 3
# generate fictitious pollution data for New York and London
co2.ny = rnorm(120, 7, sd)
co2.london = rnorm(120, 9, sd)
co2.la = rnorm(120, 10.5, sd)
ch4.ny = c(rnorm(100, 12, sd), rep(NA, 20))
ch4.london = c(rnorm(100, 15, sd), rep(NA, 20))
ch4.la = c(rnorm(100, 18, sd), rep(NA, 20))

# set vectors for labelling the data with location and pollutant
location = c('New York', 'London', 'Los Angeles', 'New York', 'London', 'Los Angeles')
pollutant = c('CO2', 'CO2', 'CO2', 'CH4', 'CH4', 'CH4')

# combine the data
all.data = data.frame(rbind(co2.ny, co2.london, co2.la, ch4.ny, ch4.london, ch4.la))

# add locations and pollutants to the data
all.data$location = location
all.data$pollutant = pollutant

#I ultimately need a data table that has 3 columns:
  
#  § the concentration of the pollutant (the value to be plotted)

#§ the name of the pollutant

#§ the city

#Thus, I need to stack the data frame all.data while retaining the name of the #pollutant and the city.  The melt() function from the “reshape2” package can do #this.  (Install it first if you don’t have it yet.)



# open the reshape2 library
library(reshape2)
# stack the data while retaining the location and pollutant label by 
stacked.data = melt(all.data, id = c('location', 'pollutant'))
# remove the column that gives the column name of the concentration from all.data
stacked.data = stacked.data[, -3]

boxplot(value ~ location + pollutant, data = stacked.data)

