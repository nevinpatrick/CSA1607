x <- c(200, 300, 400, 600, 1000)

normalized <- (x - min(x)) / (max(x) - min(x))

print(normalized)
x <- c(200, 300, 400, 600, 1000)

z <- (x - mean(x)) / sd(x)

print(z)
min_value <- 50000
max_value <- 100000
v <- 80000

normalized <- (v - min_value) / (max_value - min_value)

print(normalized)