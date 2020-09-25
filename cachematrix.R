## Put comments here that give an overall description of what your
## functions do
## The functions below computes the inverse of matrix. 
## If the matrix is previously computed, then inverse must be cached.
## it just displays the cache result.

## Write a short comment describing this function
## This function makes a cache matrix and stores it's inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() {x} 
    setinverse <- function(inverse){inv <<- inverse}
    getinverse <- function() {inv}
    list(set = set,get = get, setinverse = setinverse,getinverse = getinverse)

}


## Write a short comment describing this function
## This functions solves the inverse of matrix, if  it's not done before.

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if (!is.null(inv)){
        ## Return a matrix that is the inverse of 'x'
        message("getting cached data")
        return(inv)
        
    }
    mat <- x$get()
    inv <- solve(mat,...)
    x$setinverse(inv)
    inv
    
}


