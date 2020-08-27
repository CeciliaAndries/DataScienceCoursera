## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## The first function creates a matrix object that can cache its inverse.
## The second function computes the inverse of the matrix returned by makeCacheMatrix.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function()i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  mtx <- x$get()
  i <- solve(mtx, ...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
