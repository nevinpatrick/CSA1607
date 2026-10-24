data <- c(11, 13, 13, 15, 15, 16, 19, 20,
          20, 20, 21, 21, 22, 23, 24, 30,
          40, 45, 45, 45, 71, 72, 73, 75)
data <- sort(data)
bins <- split(data, rep(1:6, each = 4))

cat("Original Bins:\n")
print(bins)
bin_mean <- lapply(bins, function(x) rep(mean(x), length(x)))
cat("\nSmoothing by Bin Mean:\n")
print(bin_mean)
bin_median <- lapply(bins, function(x) rep(median(x), length(x)))
cat("\nSmoothing by Bin Median:\n")
print(bin_median)
bin_boundaries <- lapply(bins, function(x) {
  lower <- min(x)
  upper <- max(x)
  sapply(x, function(v) {
    if (abs(v - lower) <= abs(v - upper)) lower else upper
  })
})

cat("\nSmoothing by Bin Boundaries:\n")
print(bin_boundaries)
