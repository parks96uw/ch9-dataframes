# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employees <- paste("Employee", 1:100)

# Create a vector of 2014 salaries using the runif function
salary_2014 <- runif(100, 30000, 50000)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
salary_2015 <- runif(100, 40000, 60000)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(employees, salary_2014, salary_2015)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
raise <- salary_2015 - salary_2014

# Create a column 'got.raise' that is TRUE if the person got a raise
got.raise <- raise > 0

# Retrieve values from your data frame to answer the following questions:
salaries$raise <- raise
salaries$got_raise <- got.raise
salaries

# What was the 2015 salary of employee 57
salaries[salaries$employees == "Employee 57", 'salary_2015']

# How many employees got a raise?
nrow(salaries[salaries$got_raise,] == TRUE)

# What was the value of the highest raise?
highest_raise <- max(salaries$raise)

# What was the name of the employee who recieved the highest raise?
salaries[(salaries$raise == highest_raise), 'employees']

# What was the largest decrease in salaries between the two years?
lowest_raise <- min(salaries$raise)

# What was the name of the employee who recieved largest decrease in salary?
salaries[(salaries$raise == lowest_raise), 'employees']

# What was the average salary increase?
avg_salary_raise <- mean(salaries$raise)

### Bonus ###

# Write a .csv file of your salaries to your working directory
# setwd("C:/Users/SarahPark/Desktop/FALL17/INFO201/Exercises/reviewExercises/oct9/ch9-dataframes/exercise-1")
write.csv(salaries, file="salaries.csv")

# For people who did not get a raise, how much money did they lose?
avg_salary_loss <- mean(salaries$raise[salaries$got_raise == FALSE])

# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
