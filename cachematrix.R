## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #create undefined/empty matrix
  matinverse <- NULL
  #values will be cached
  set <- function(y) {                      
    x <<- y
    matinverse <<- NULL              
  }
  # to get values of inverse
  get <- function() x
  # calculates the inverse using the solve function
  setinverse <- function(solve) matinverse <<- solve
  # gets the inverse
  getinverse <- function() matinverse
  #list containing values of this function 
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matinverse <- x$getinverse()
  # checks caches whether inverse exists and returns it
  if(!is.null(matinverse)) {                 
    message("getting cached data")
    return(matrixinverse)
  }
  #calculates inverse
  data <- x$get()                               
  matinverse <- solve(data, ...)
  x$setinverse(matinverse)
  matinverse  
}
