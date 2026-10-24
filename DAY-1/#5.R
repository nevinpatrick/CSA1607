age <- c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)

fat <- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,
         34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)
cat("Mean of Age:", mean(age), "\n")
cat("Median of Age:", median(age), "\n")
cat("SD of Age:", sd(age), "\n")

cat("Mean of Fat:", mean(fat), "\n")
cat("Median of Fat:", median(fat), "\n")
cat("SD of Fat:", sd(fat), "\n")
boxplot(age, fat,
        names = c("Age", "Body Fat"),
        main = "Boxplots of Age and Body Fat",
        col = c("lightblue", "lightgreen"))
plot(age, fat,
     main = "Scatter Plot: Age vs Body Fat",
     xlab = "Age",
     ylab = "Body Fat (%)",
     pch = 19,
     col = "blue")
par(mfrow = c(1, 2))

qqnorm(age, main = "Q-Q Plot of Age")
qqline(age, col = "red")

qqnorm(fat, main = "Q-Q Plot of Body Fat")
qqline(fat, col = "red")

par(mfrow = c(1, 1))
