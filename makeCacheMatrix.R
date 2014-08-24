## Put comments here that give an overall description of 

what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
m <- NULL
set <- function(y){
x <<- y
m <<- NULL #store matrix in cache
}
get <- function() x #get matrix
setInverse <- function(solve) m<<- solve #set inverse 

matrix
getInverse <- function() m #get inverse matrix
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse) 
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
m <- x$getInverse()
if(!is.null(m)){ 
message("getting cached data") 
return(m) 
}
data <- x$get() 
m <- solve(data, ...)
x$setInverse(m) 
}
