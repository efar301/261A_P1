library(dplyr)
library(tidyr)
library(ggplot2)

data = read.csv(
	"261A_P1/data/Dataset of motor insurance portfolio.csv",
	sep = ";"
)

filter_data = function(d, target_year) {
	clean = d %>%
		mutate(years_licensed = driver_age - age_driving_licence) %>%
		filter(
			year == target_year,
			liability_incurred > 0
		)
	write.csv(clean, "261A_P1/data/cleaned_data.csv", row.names = FALSE)
}

filter_data(data, 2022)
