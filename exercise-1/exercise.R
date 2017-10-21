### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
                           # Hint: google "Seahawks scores", or check the football database:
                           # http://www.footballdb.com/teams/nfl/seattle-seahawks/results
                           # here 'Result' displays scores, 'L' stands for loss, 'W' for win
seahawks <- c(9, 12, 27, 46, 16)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 5 games
others <- c(17, 9, 33, 18, 10)


# Combine your two vectors into a dataframe
game <- data.frame(seahawks, others)
game

# Create a new column "diff" that is the difference in points
diff <- seahawks - others
diff

# Create a new column "won" which is TRUE if the Seahawks won
won <- diff > 0

# Create a vector of the opponents
opponents <- c("Green Bay Packers", "San Francisco 49ers", "Tennessee Titans", "Indianapolis Colts", "LA Rams")

# Add the vector of opponents into the data frame
game$opponent <- opponents
game