x <- c(1, 1, 5, 5, 5, 5, 5, 8, 8,
       10, 10, 10, 10, 12, 14, 14, 14,
       15, 15, 15, 15, 15, 15,
       18, 18, 18, 18, 18,
       20, 20, 20, 20, 20,
       21, 21, 21, 21,
       25, 25, 25, 25, 28, 28, 30)
bins <- split(x, cut(seq_along(x), breaks = 3,
                     labels = FALSE))

print(bins)
mean_bins <- lapply(bins, function(b) {
  rep(round(mean(b), 2), length(b))
})
cat("Smoothing by bin means:\n")
print(mean_bins)
boundary_bins <- lapply(bins, function(b) {
  low <- min(b)
  high <- max(b)
  sapply(b, function(v) {
    if (abs(v - low) <= abs(v - high)) low else high
  })
})

cat("Smoothing by bin boundaries:\n")
print(boundary_bins)
hist(x,
     breaks = seq(0, 35, by = 5),
     main = "Histogram of Electronics Prices",
     xlab = "Price",
     ylab = "Frequency",
     col = "lightblue",
     right = FALSE)