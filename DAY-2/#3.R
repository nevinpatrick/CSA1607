A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84, 76, 35, 47, 64, 95, 66, 89, 36, 84)
B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50, 51, 56, 84, 60, 59, 70, 63, 66, 50)

cat("Class A\n")
cat("Mean:", mean(A), "\n")
cat("Median:", median(A), "\n")
cat("Range:", range(A), "\n")

cat("Class B\n")
cat("Mean:", mean(B), "\n")
cat("Median:", median(B), "\n")
cat("Range:", range(B), "\n")

boxplot(A, B, names = c("Class A", "Class B"),
        main = "Class Performance",
        ylab = "Marks", col = c("lightblue", "lightgreen"))