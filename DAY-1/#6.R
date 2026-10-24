age <- c(23,23,27,27,39,41,47,49,50,
         52,54,54,56,57,58,58,60,61)

x <- 35
min_val <- min(age)
max_val <- max(age)

min_max <- (x - min_val) / (max_val - min_val)
mean_age <- mean(age)
sd_age <- 12.94

z_score <- (x - mean_age) / sd_age
j <- ceiling(log10(max(abs(age))))
decimal_scaling <- x / (10^j)
cat("Min-Max Normalization:", min_max, "\n")
cat("Z-Score Normalization:", z_score, "\n")
cat("Decimal Scaling Normalization:", decimal_scaling, "\n")
