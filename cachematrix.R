## This code creates a matrix object and calculates 
## its inverse. As it is a time -consumiong process, 
## the function will check if the calculation 
## already exists before running it.

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y) 
{
  x <<- y
  inv <<- NULL
}
get<-function() x
setinv<-function(solve) inv <<- solve
getinv<-function() inv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## The following function returns the inverse of the matrix, 
## checking first if it exist in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data.")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data,...) 
  x$setinv(inv)
             inv
  
  
}

