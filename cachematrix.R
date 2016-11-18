## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


### My Solution starts here.
### Making Function makeCacheMatrix
### Will make a cache of the matrix
makeCacheMatrix <- function(a = matrix()) {
  inv <- NULL
  set <- function(b) {
    a <<- b
    inv <<- NULL  ##Matrix Inverse is stored in this
  }
  get <- function() a
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,get = get,setInverse = setInverse,getInverse = getInverse) # necessary for a list
}

### Making Function cacheSolve
### Will solve using data from cached matrix data
cacheSolve <- function(a, ...) {
  
  inv <- a$getInverse()
  if (!is.null(inv)) {
    message("Getting data from cache")
    return(inv)
  }
  mat <- a$get()
  inv <- solve(mat, ...)
  a$setInverse(inv)
  inv   #prints inverse
}