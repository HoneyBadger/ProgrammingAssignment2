## Creates a pair of functions that cache important data
## Create functions that cache the inverse of a matrix
## Function 1 - Create special matrix object that can cache its inverse
## Variable x = matrix; Variable s = scope
## Get = returns matrix; Getinverse = returns cached inverse value
## Set = sets matrix and resets cached inverse data; Setinverse = save value
makeCacheMatrix <- function(x = matrix()) {
s <- NULL
set <- function (matrix) {
  x <<- matrix
  s <<- NULL
}
get <- function () {
  x
}
setInverse <- function (solve) {
  s <<- solve
}
getInverse <- function () {
  s
}
list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Function 2 - Creates the inversed matrix from a special object created by Function 1
## Variable x = checks inverse
## Variable s = scope variable (just as Function 1)
## SetInverse used for x cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
s <- x$getInverse()
if(!is.null(s)) {
  message ("getting cached data")
  return(s)
}
data <- x$get()
s <- solve(data, ...)
x$setInverse(s)
s
}















