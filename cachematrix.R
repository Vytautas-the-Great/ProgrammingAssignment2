## Put comments here that give an overall description of what your
## functions do

## make Cache Matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <-NULL
  get <- function() x
  setInverse <- function(inv) inverse <<- inv
  getInverse <- function() inverse
  list(get = get, setInverse = setInverse, getInverse = getInverse)
  
}

## catche Solve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <-x$getInverse()
   if(!is.null(inv)){
     message("getting cached inverse")
     return(inv)
   }
   data <-x$get()
   inv <- solve(data)
   x$setInverse(inv)
   inv
}
