## Put comments here that give an overall description of what your
## The functions are used to create a special object that stores a matrix and caches its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  z <- NULL             ##starting inverse as NULL
  set <- function(y) {          ##setting the value of the matrix
    x <<- y
    z <<- NULL
  }
  get <- function() {x}           ##get the value of the matrix
  setinverse <- function(inverse) {z <<- inverse}  ##setting the value of the inverse   
  getinverse <- function() {z}          ##getting the value of the inverse
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
## Write a short comment describing this function
##this function checks if the inverse has been calculated before, it will give the inverse
##matrix from cached data.

cacheSolve <- function(x, ...) {
  z <- x$getinverse()          
  if (!is.null(z)) {              ##create a loop for inverse matrix
    message("getting cached data")
    return(z)
  }
  matr <- x$get()              
  z <- solve(matr, ...)
  x$setinverse(inv)
  z                        ## Return a matrix that is the inverse of 'x'
}
