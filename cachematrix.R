##Basically matrix inverse_matrixersion is a costly computation and rather than repeatdely doing that particular time cosuming task 
##we could make functions that will cache inverse_matrixerse of a matrix
 

## This function is to create a special matrix object 
## that will cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse_matrix <- NULL
  set <- function(y) {
    x <<- y
    inverse_matrix <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inverse_matrix <<- inverse
  getInverse <- function() inverse_matrix
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}

## This cacheSolve function will calculate the inverse of a special martix created by above function
##it'll retrieve the inverse from the cache if If the inverse has already been calculated and matrix is unchanged

cacheSolve <- function(x, ...) {

  ## Return a matrix that is the inverse_matrixerse of 'x'
inverse_matrix <- x$getInverse()
if (!is.null(inverse_matrix)) {
    message("getting cached data")
    return(inverse_matrix)
  }

matrixx <- x$get()
inverse_matrix <- solve(matrixx, ...)
x$setInverse(inverse_matrix)
inverse_matrix
  
  
}
getwd()
