water <- data.frame(
  hardness = c(88, 70, 78, 95, 65, 80, 110, 85, 60, 100),
  mortality = c(1700, 1800, 1750, 1600, 1900,
                1780, 1500, 1720, 1950, 1550)
)
plot(water$hardness, water$mortality,
     main = "Hardness vs Mortality",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19,
     col = "blue")
cat("Correlation:", cor(water$hardness, water$mortality), "\n")
model <- lm(mortality ~ hardness, data = water)
abline(model, col = "red", lwd = 2)
print(summary(model))
prediction <- predict(
  model,
  newdata = data.frame(hardness = 88)
)

cat("Predicted mortality:", prediction, "\n")
