# Creating two sample data frames
df1 <- data.frame(Name = c('Alice', 'Bob'), Age = c(25, 30))
df2 <- data.frame(Name = c('Charlie', 'David'), Age = c(35, 40))

# Vertically concatenating the data frames
df_vertical <- rbind(df1, df2)
print("Vertical Concatenation:")
print(df_vertical)

# Horizontally concatenating the data frames (adding columns from df2 to df1)
df_horizontal <- cbind(df1, df2)
print("Horizontal Concatenation:")
print(df_horizontal)

