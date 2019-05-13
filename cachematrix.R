## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## These functions will let you cache the inverse of a matrix 
## and then retrieve it back from the cache to  view it 


## iin gets matrix is inversed and cached
makeCacheMatrix <- function(x = matrix()) {
    iin <- NULL
    set <- function(b) {
        x <<- b
        iin <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) iin <<- inverse
    getinverse <- function() iin
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}
## solving the cache file in which we just
## put the inversed matrix 
cacheSolve <- function(x, ...) {
    iin <- x$getinverse()
    if (!is.null(iin)) {
        message("Retrieving Cache")
        return(iin)
    }
    data <- x$get()
    iin <- solve(data, ...)
    x$setinverse(iin)
    iin
}

