data <- data.frame(
  Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70),
  BloodPressure = c(70, 75, 72, 80, 78, 85, 82, 90, 88, 95)
)
print(data)
plot(data$Age, data$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     col = "blue",
     pch = 19)
data$AgeGroup <- cut(
  data$Age,
  breaks = c(20, 30, 40, 50, 60, 80),
  include.lowest = TRUE,
  labels = c("20-30", "31-40", "41-50", "51-60", "61-80")
)
avg_bp <- aggregate(
  BloodPressure ~ AgeGroup,
  data = data,
  FUN = mean
)

print(avg_bp)
barplot(avg_bp$BloodPressure,
        names.arg = avg_bp$AgeGroup,
        main = "Average Blood Pressure by Age",
        xlab = "Age Group",
        ylab = "Average Blood Pressure",
        col = "lightblue")