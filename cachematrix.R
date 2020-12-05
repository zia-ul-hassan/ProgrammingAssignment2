
## Put comments here that give an overall description of what your
## functions do

## The two functions are meant to compute and cache the inverse of a matrix.



## Write a short comment describing this function
## The first function sets the matrix, gets the value of the matrix, sets the inverse of the matrix and gets the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

## The second function calculates the inverse of the matrix. If the inverse was previously calculated then it just retrives it from the cache. Otherwise, it calculates the inverse and sets the value using setinverse() function.


cacheSolve <- function(x, ...) {
        
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}


