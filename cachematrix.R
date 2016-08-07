## ProgrammingAssignment 2

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
cacheinverse <- NULL
set <- function(y) {
  x <<- y
  cacheinverse <<- NULL
}
get <- function() x
setInverse <- function(inverse) cacheinverse <<- inverse
getInverse <- function() cacheinverse
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}

## The first function is set to the name "makeCacheMatrix" that gets the inverse of the matrix in the function. 

cacheSolve <- function(x, ...) {
cacheinverse <- x$getInverse()
if (!is.null(cacheinverse)){
  message("getting cached data")
  return(cacheinverse)
}
matrix <- x$get()
cacheinverse <- solve(matrix, ...)
x$setInverse(cacheinverse)
cacheinverse
  }
getwd()
The_Matrix <- makeCacheMatrix(matrix(1:4, 2,2))
The_Matrix$get()
The_Matrix$getInverse()
cacheSolve(The_Matrix)
cacheSolve(The_Matrix)
The_Matrix$getInverse()
The_Matrix$set(matrix(c(4,1,2,2),nrow = 2, ncol = 2))
The_Matrix$get()
The_Matrix$getInverse()
cacheSolve(The_Matrix)
cacheSolve(The_Matrix)
The_Matrix$getInverse()
