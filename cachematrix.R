## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##  
## returns a matrix and its inverse as List

makeCacheMatrix <- function(x = matrix()) {
  # Initialize Inverse Matrix to NULL
  inv <- NULL
  #Set Matrix and inverse
  setfn <- function(y)
  {
    x <<- y
    inv <<- NULL
  }
  #Get value of  Matrix
  getfn <- function() 
  {
    x
  }
  
  # set Inverse of Matrix
  setInversefn <- function(inverse)
  {
    inv <<- inverse 
  }
  # Get value of Inverse Matrix
  getInversefn <- function()
  {
    inv			
  }
  #returns the list of values
  list(set = setfn,
       get = getfn,
       setInverse = setInversefn,
       getInverse = getInversefn)
}


## Write a short comment describing this 
##Checks cache for existing value, if not present it computes the inverse of the matrix 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
