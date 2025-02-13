install.packages("brglm2")  # Run this only once
library(brglm2)

data(iris)

iris$Setosa <- ifelse(iris$Species == "setosa", 1, 0)

model <- brglm(Setosa ~ Sepal.Length + Petal.Length, data = iris, family = binomial)

summary(model)

new_flower <- data.frame(Sepal.Length = 5.5, Petal.Length = 1.5)
predicted_prob <- predict(model, newdata = new_flower, type = "response")

predicted_class <- ifelse(predicted_prob > 0.5, 1, 0)

print(paste("Predicted probability of being Setosa:", round(predicted_prob, 4)))
print(paste("Predicted class (1=Setosa, 0=Not Setosa):", predicted_class))

