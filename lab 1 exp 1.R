# Take user input for name and age
name <- readline(prompt="Enter your name: ")
age <- as.integer(readline(prompt="Enter your age: "))

# Display the values
cat("Name:", name, "\n")
cat("Age:", age, "\n")

# Print the version of R installation
cat("R version:", R.version.string, "\n")

