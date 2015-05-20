## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

##Solution:
## Overall function comments:
## creates a special "matrix" object aht can cache its inverse. 
## computes or caches the inverse of the special "matrix"

## Function1 - creates a special "matrix" object that can cache its inverse
MakeCacheMatrix <- function (x = matrix()){
  m <- NULL
  set <- function (y){
    x <<- y
    m <<- NULL
  }
  get <- function () x
  setsolve <- function(solve) m <<- solve
  getsolve <- function () m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Function2 - computes or caches the inverse of the special "matrix"
cacheSolve <- function (x, ...) {
  m <- x$getsolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
