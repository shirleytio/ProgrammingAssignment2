## Caching the Inverse of a Matrix

## Matrix inversion is usually a costly computation and there may be some benefit to

## caching inverse of a matrix rather than compute it repeatedly.

## Below is a pair of functions that cache the inverse of a matrix.



## This function creates a special "matrix" object that can cache its inverse.



makeCacheMatrix <- function(x=matrix()) {
  
  inv <- NULL
  
  set <- fumction(y) {
    
    x <<- y
    
    inv <<- NULL
    
  }
  
  get <- function()x
  
  setInverse <- function (invserse) inv <<- invserse
  
  getInverse <- function() inv
  
  list(set=set, get=get,
       
       setInverse=setInverse,
       
       getInverse=Inverse )
  
}




## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  
  inv <- x$getInverse()
  
  if(!is.null(inv)) {
    
    message("getting cached data")
    
    return(inv)
    
  }
  
  data <- x$get()
  
  inv <- solve(data, ...)
  
  x$setInverse(inv)
  
  inv
  
}