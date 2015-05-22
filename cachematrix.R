## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Return a list containing functions to set the different aspect of Caching the Matrix, 
## follwing aspect will be covered in this function
##    1.set the value of the vector
##    2.get the value of the vector
##    3.set the value of the mean
##    4.get the value of the mean
## This function will be used with cacheSolve function as an input


makeCacheMatrix <- function(x = matrix()) {
  ## initialize the inv variable
  inv <- NULL
  set <- function(y) {
    # use `<<-` or assignment operator to assign a value to an object 
    # in global environment
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse 
  getinv <- function() inv
  
  ## return the list which contains all the four vectors
  list(set=set, get=get, setinv=setinv, getinv=getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
