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
  ## Will return the inverse of the matrix passed to the makeCacheMatrix function 
  ## if inv variable is already cached in global environment then it will be returned
  inv <- x$getinv()
  
  # After the above assignment this will check if inv variable is null or not
  # if it is not null then it will say that data is from cache and skip costly computation
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  
  # If not set in environment then get it assigned  
  data <- x$get()
  # Solve function will inverse the passed matrix 
  inv <- solve(data, ...)
  
  # Now set the value of inv obtained above using setinv function , in Cache environment
  
  x$setinv(inv)
  # return the inv 
  
  return(inv)
}
