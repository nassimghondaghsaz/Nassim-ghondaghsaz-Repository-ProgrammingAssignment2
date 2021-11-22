## The functions are used to create a special object that stores a matrix and caches its inverse

##the following function has four functions to set the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  z <- NULL                      ##starting inverse as NULL
  set <- function(y) {           ##set the value of the matrix
    x <<- y
    z <<- NULL
  }
  ##get the value of the matrix
  get <- function() {x}        
  
  ##set the value of the inverse
  setinverse <- function(inverse) {z <<- inverse}
  
  ##get the value of the inverse
  getinverse <- function() {z}          
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

##this function checks if the inverse has been calculated before, 
##it will give the inverse matrix from cached data.

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