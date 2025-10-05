# Create matricies
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# Print both matricies
print(A)
print(B)

# Add and Subtract matricies
matrix_add <- A+B
matrix_sub <- A-B

# Display results
matrix_add
matrix_sub

# Create Sample diagonal matrix and print
D <- diag(c(4, 1, 2, 3))
print(D)

# Custom 5x5
# Create first column of vlaues for first part
first_col <- c(3, 2, 2, 2, 2)

# Create right side values for second part
right_side <- rbind(rep(1, 4), diag(3, 4))

#Display right_side
right_side

# Merge first_col with right_side and store as final_matrix
final_matrix <- cbind(first_col, right_side)

# Show final_matrix results
final_matrix

