# Programming Assignment 4
# Simeon Sipes
# 06/06/2026
# Creates a plot by adding points, lines, text, and a legend

# create data vectors
x <- 1:20

y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43,
       8.51, 3.41, -8.23, -12.01, -6.58, 2.87, 14.12,
       9.63, -4.58, -14.78, -11.67, 1.17, 15.62)

# create empty plot
plot(x, y, type = "n", main = "")

# add horizontal lines
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2)

# add vertical lines
segments(x0 = c(5, 15), y0 = c(-5, -5),
         x1 = c(5, 15), y1 = c(5, 5),
         col = "red", lty = 3, lwd = 2)

# add large values
points(x[y >= 5], y[y >= 5], pch = 4,
       col = "darkmagenta", cex = 2)

# add small values
points(x[y <= -5], y[y <= -5], pch = 3,
       col = "darkgreen", cex = 2)

# add sweet spot values
points(x[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       y[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       pch = 19, col = "blue")

# add standard values
points(x[(x < 5 | x > 15) & (y > -5 & y < 5)],
       y[(x < 5 | x > 15) & (y > -5 & y < 5)])

# add connecting line
lines(x, y, lty = 4)

# add arrow
arrows(x0 = 8, y0 = 14, x1 = 11, y1 = 2.5)

# add text label
text(x = 8, y = 15, labels = "sweet spot")

# add legend
legend("bottomleft",
       legend = c("overall process", "sweet", "standard",
                  "too big", "too small", "sweet y range",
                  "sweet x range"),
       pch = c(NA, 19, 1, 4, 3, NA, NA),
       lty = c(4, NA, NA, NA, NA, 2, 3),
       col = c("black", "blue", "black", "darkmagenta",
               "darkgreen", "red", "red"),
       lwd = c(1, NA, NA, NA, NA, 2, 2),
       pt.cex = c(NA, 1, 1, 2, 2, NA, NA),
       cex = 0.5)