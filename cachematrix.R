## Put comments here that give an overall description of what your
## functions do

## Functions calculate Inverse martix for the given one and cache the result. 
## It calculates Inverse for new matrixes and get Inverse from cache if it already has 
## been calculated


## Write a short comment describing this function

## Function pass matrix as an agrument. It has 4 methods
## set - set the value of the matrix
## get - get the value of the matrix
## setInverse - set the value of the Inverse matrix
## getInverse - get the value of the Inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	  m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x  ##return matrix
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}
 
## Write a short comment describing this functions

## Chech if there as already cached Inverx matrix for the given one and return it if so
## Calculate Inverse matrix if it not cached yet and cache it.
##

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	  m <- x$getInverse()
        	if(!is.null(m)) {
            	    message("getting cached data")
            	    return(m)
        	}
        data <- x$get()
        m <- solve(data)
        x$setInverse(m)
        m
}
