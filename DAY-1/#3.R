data <- c(200, 300, 400, 600, 1000)
min_val <- min(data)
max_val <- max(data)

min_max <- (data - min_val) / (max_val - min_val)
mean_val <- mean(data)
sd_val <- sd(data)

z_score <- (data - mean_val) / sd_val
cat("Original Data:", data, "\n")
cat("Min-Max Normalization:\n")
print(round(min_max, 3))

cat("Z-Score Normalization:\n")
print(round(z_score, 3))
