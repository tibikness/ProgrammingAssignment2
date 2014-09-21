

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
### This takes a numeric matrix and creates a list of functions

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x<<-y
    inv <<- NULL
      }
  get<-function()x
  setInverse <-function(inverse)inv <<-inverse
  getInverse<-function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  

}


## Write a short comment describing this function
## Calculates the inverse of a matrix
##If the inverse exists in the cache it is not recalculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 i<-x$getInverse()
 if(!is.null(i)){
   print("getting cached data")
   return(i)
   }else{
   #calculate the inverse
    print("calculating")
    a <-x$get()
    inv<-solve(a)
    x$setInverse(inv)
    print("seeing if set works")
    print(x$setInvers(inv))
    #inv
    }
   
}
