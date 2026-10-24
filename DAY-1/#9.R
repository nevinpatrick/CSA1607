marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58,
           59, 61, 63, 65, 67, 71, 72, 75)
marks <- sort(marks)
bins <- split(marks, rep(1:3, each =  length(marks) %/% 3)[seq_along(marks)])

cat("Equal-Frequency Bins:\n")
print(bins)
hist(marks, breaks = 3,
     main = "Equal-Frequency Partitioning",
     xlab = "Marks", col = "lightblue")
min_val <- min(marks)
max_val <- max(marks)
width <- (max_val - min_val) / 3

breaks <- seq(min_val, max_val, length.out = 4)
equal_width_bins <- cut(marks, breaks = breaks,
                        include.lowest = TRUE)

cat("Equal-Width Bins:\n")
print(split(marks, equal_width_bins))
hist(marks, breaks = breaks,
     include.lowest = TRUE,
     main = "Equal-Width Partitioning",
     xlab = "Marks", col = "lightgreen")
