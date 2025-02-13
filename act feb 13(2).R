data(mtcars)

head(mtcars)

model <- lm(mpg ~ hp + wt + cyl, data = mtcars)

summary(model)

new_car <- data.frame(hp = 120, wt = 2.5, cyl = 6)
predicted_mpg <- predict(model, newdata = new_car)

print(paste("Predicted MPG for hp=120, wt=2.5, cyl=6:", round(predicted_mpg, 2)))

