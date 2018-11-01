## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function will try to save and retrieve the cached matrix values
#it does this by defining getter and setter function for the inverse for storing
#the cached value and also for retrieving the cached values

makeCacheMatrix <- function(x =  matrix()) {
  inv<-NULL
  set<-function(matrix) {
    x<<-matrix
    inv<<-NULL
  }
  get<-function() {
    x
  }
  setInv<-function(inverse) {
    inv<<-inverse
  }
  getInv<-function() {
    inv
    
  }
  
  list(set=set,get=get,setInv=setinv,getInv=getInv)
  
  
}




## Write a short comment describing this function
# This function tries to return the inverse from the cache for the matrix
#if not available then it calculates it and stores in cache for next use and returns
#it

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inv<-x$getInv()
  
  if(!is.null(inv)) {
    return(inv)
  }
  
  matx<- x$get() 
  inv<-solve(matx)
  x$setInv(inv)
  inv
  
}
