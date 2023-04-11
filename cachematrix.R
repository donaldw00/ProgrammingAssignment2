## Two functions that produce the inverse of a given matrix

## Initial function to create matrix object

makeCacheMatrix <- function(x = matrix()) {
    ##initialise variable
   i <- NULL
    ##set matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
    ##get matrix
  get <- function() {
    x
  }
    ##inverse of matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  getInverse <- function() {
    i
  }
  
    ##list of methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Function calculates inverse of matrix object using 'solve' function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  ##Return inverse matrix if already calculated
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ##retrieve matrix from object
  data <- x$get()
  ##calculate inverse
  i <- solve(data, ...)
  ##replace object with inverse calculated
  x$setInverse(i)
  ##return value
  i
  
}
