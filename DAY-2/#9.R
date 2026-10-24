scores <- c(10, 12, 15, 18, 20, 22, 25, 28, 30, 35, 80)

boxplot(scores,
        main = "Tennis Players' Scores",
        ylab = "Points",
        col = "lightblue")

print(boxplot.stats(scores)$out)
