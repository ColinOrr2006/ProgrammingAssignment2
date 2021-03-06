## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL

        set <- function(y) {
                x <<- y
                inv <<- NULL
        }

        get <- function() x

        setinv <- function(i) inv <<- i
        getinv <- function() inv

        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

        i <- x$getinv()

        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }

        data <- x$get()
        i <- solve(data, ...)
        x$setinv(i)

        i   ## Return a matrix that is the inverse of 'x'
}
