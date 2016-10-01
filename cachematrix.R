## Week 3 - Programming Assignment
## Caching the inverse of a square matrix

## makeCacheMatrix is a function to create a 'special' matrix (square matrix) and chache the inverse of the matrix.
## The sample function given in the assignment (makeVector) is used as a prototype to create this function.
## The crucial difference between makeVector and makeCacheMatrix is that we create a matrix() instead of a numeric() vector.
## The mean() function is replaced by the solve() function, which computes the inverse of a square matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The sample function given in the assignment (cachemean) is used as a prototype to create this function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getmatrix()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
