# Exercise 4: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors

# Use the View function to look at your data
setwd("C:/Users/SarahPark/Desktop/FALL17/INFO201/Exercises/reviewExercises/oct9/ch9-dataframes/exercise-4")
grants <- read.csv('data/gates_money.csv', stringsAsFactors=FALSE)
grants

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- grants$organization

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
avg_grant <- mean(spending)

# What was the dollar amount of the largest grant?
max_grant <- max(spending)

# What was the dollar amount of the smallest grant?
min_grant <- min(spending)

# Which organization received the largest grant?
largest_grant_org <- grants$organization[grants$total_amount == max_grant]

# Which organization received the smallest grant?
smallest_grant_org <- grants$organization[grants$total_amount == min_grant]

# How many grants were awarded in 2010?
grants_2010 <- grants[grants$start_year == 2010,]
