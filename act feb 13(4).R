data(warpbreaks)

head(warpbreaks)

model <- glm(breaks ~ wool + tension, data = warpbreaks, family = poisson)

summary(model)

new_observation <- data.frame(wool = "A", tension = "M")
predicted_breaks <- predict(model, newdata = new_observation, type = "response")

print(paste("Predicted number of breaks for wool A and tension M:", round(predicted_breaks, 2)))

