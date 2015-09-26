## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  # set function changes matrix stored in main
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x #get the value of the matrix stored in main function
  setInverseMatrix <- function(solve) m <<- solve # set the inverse of the matrix
  getInverseMatrix <- function() m #get the inverse matrix
  list(set = set, get = get,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix) #return the list
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverseMatrix () #store the inverse matrix to variable m
  if(!is.null(m)) {
    message("getting cached inverse matrix")
    return(m) #return matrix if it exists and is not null
  }
  data <- x$get() #get matrix and assign it to data
  m <- solve(data, ...) #assigning inverse matrix to m
  x$setInverseMatrix(m) #set the inverse matrix
  m #return the matrix
}
