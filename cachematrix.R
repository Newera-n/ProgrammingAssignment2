## This function can be used to set the matrix and solve its inverse

## Set and get the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  setmatrix <- function(y) {
    x <<- y
    inv <<- NULL
  }
  getmatrix <- function() {
    x
  }
  setinverse <- function(inverse) {
    inv <<- inverse
  }
  getinverse <- function() {
    inv
  }
  list(setmatrix = setmatrix, 
       getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Solve the matrix's inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$getmatrix()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
