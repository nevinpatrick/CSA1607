age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22,
         25, 25, 25, 25, 30, 33, 33, 35, 35, 35,
         35, 36, 40, 45, 46, 52, 70)
mean_age <- mean(age)
median_age <- median(age)
mode_age <- as.numeric(names(which(table(age) == max(table(age)))))
midrange <- (min(age) + max(age)) / 2
Q1 <- quantile(age, 0.25)
Q3 <- quantile(age, 0.75)
cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
cat("Mode:", mode_age, "\n")
cat("Midrange:", midrange, "\n")
cat("First Quartile (Q1):", Q1, "\n")
cat("Third Quartile (Q3):", Q3, "\n")
