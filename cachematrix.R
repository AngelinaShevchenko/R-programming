
##This code creates a makeCacheMatrix that caches its inverse and create the function cacheSolve, which computes the interns
## of the special matrix returned by makeCacheMatrix.


makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    get <- function() {x}
    setInverse <- function(inverse) (inv <<- inverse)
    getInverse <- function() (inv)
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}



cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    if(!is.null(inv)){
    message("getting cached data")
    return(inv)
      ##Then we return the inverse matrix of x
    }
    matt <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
        
}
