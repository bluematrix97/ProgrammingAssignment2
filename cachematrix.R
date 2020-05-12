## Put comments here that give an overall description of what your
## functions do
The aim is to write a pir of function, "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix.
## Write a short comment describing this function
makeCacheMatrix creates a special matrix object that can cache its inverse for the input
makeCacheMatrix <- function(x = matrix()) {
n<-NULL
set<-function(y){
	x<<-y
	n<<NULL
	}
	get<-function()x
	setInverse<-function(inverse)n<<-inverse
	getInverse<-function()n
	list(set=set, get= get,
	set INverse=setInverse,
	getInverse=getInverse)
}
}


## Write a short comment describing this function
cacheSolve computes the inverse of the special matrix returned by makeCache matrix. if the inverse has already been calculated and the matrix remains the same, cachesolve should extract the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        n<-x$getInverse()
        if(!is.null(n)){
        	message("getting cached data")
        	return(n)
        }
        mat<-x$get()
        j<-solve(mat,...)
        x$setInverse(n)
        n
}
