data("AirPassengers")

hist(as.numeric(AirPassengers),
     breaks = seq(100, 700, by = 150),
     main = "AirPassengers Histogram",
     xlab = "Number of Passengers",
     col = "lightblue",
     right = FALSE)