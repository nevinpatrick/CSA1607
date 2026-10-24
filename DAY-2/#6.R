data(mtcars)

plot(mtcars$mpg, type = "l",
     col = "blue", ylim = range(c(mtcars$mpg, mtcars$qsec)),
     xlab = "Car Index", ylab = "Value",
     main = "MPG and QSEC Line Chart")

lines(mtcars$qsec, col = "red")

legend("topright",
       legend = c("MPG", "QSEC"),
       col = c("blue", "red"), lty = 1)