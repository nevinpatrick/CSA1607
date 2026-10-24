age <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequency <- c(200, 450, 300, 1500, 700, 44)
N <- sum(frequency)
cf <- cumsum(frequency)
median_position <- N / 2
median_index <- which(cf >= median_position)[1]
L <- c(1, 5, 15, 20, 50, 80)[median_index]
f <- frequency[median_index]
Cf <- ifelse(median_index == 1, 0, cf[median_index - 1])
h <- c(4, 10, 5, 30, 30, 30)[median_index]

median_value <- L + ((median_position - Cf) / f) * h
cat("Total Frequency:", N, "\n")
cat("Median Class:", age[median_index], "\n")
cat("Approximate Median:", median_value, "\n")
