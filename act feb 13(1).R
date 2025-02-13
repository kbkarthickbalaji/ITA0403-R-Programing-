# Load the built-in mtcars dataset
data(mtcars)

# View the first few rows of the dataset
head(mtcars)

# Scatter plot of Horsepower vs MPG
plot(mtcars$hp, mtcars$mpg, 
     main="Scatter Plot of Horsepower vs MPG",
     xlab="Horsepower (hp)", ylab="Miles Per Gallon (mpg)", 
     col="blue", pch=19)

# Fit a simple linear regression model
model <- lm(mpg ~ hp, data=mtcars)

# Display the summary of the regression model
summary(model)

# Scatter plot with regression line
plot(mtcars$hp, mtcars$mpg, 
     main="Horsepower vs MPG with Regression Line", 
     xlab="Horsepower (hp)", ylab="Miles Per Gallon (mpg)", 
     col="blue", pch=19)

# Add regression line
abline(model, col="red", lwd=2)

# Predict MPG for a car with 150 horsepower
new_data <- data.frame(hp = 150)
predicted_mpg <- predict(model, new_data)
print(paste("Predicted MPG for 150 HP:", round(predicted_mpg, 2)))

# Residual Plot (to check linearity & homoscedasticity)
plot(model$fitted.values, residuals(model), 
     main="Residual Plot", 
     xlab="Fitted Values", ylab="Residuals", 
     col="blue", pch=19)
abline(h=0, col="red", lwd=2)

# Histogram of residuals (to check normality)
hist(residuals(model), main="Histogram of Residuals", 
     xlab="Residuals", col="lightblue", border="black")

