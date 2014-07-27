makeCacheMatrix <- function(x = matrix()) {

  m  <- NULL
  set  <- function(y) {
    x <<- y
    m <<- NULL
    
  }
  
  get  <- function() x
  setmatrix  <- function(solve) m  <<- solve
  getmatrix  <- function() m 
  list(set = set, get = get, setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m  <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
    
  }
  matrix  <- x$get()
  m  <- solve(matrix,...)
  x$setmatrix(m)
  m
}
