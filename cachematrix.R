## This function creates a matrix when called with an argument to place in the matrix.
## Within this functions their are other functions.  
## Function Set, sets values, changes the matrix stored in the main function.
## makeCacheMatrix is the main function containing others.

makeCacheMatrix <- function(x = matrix()) { 
        
        m<-matrix()
        m <- NULL
        
        n<<-FALSE
        
        
        ## set functions sets values.
        set <- function(y) {
                x <<- y
                
        }
        
        get <- function() x             ## get function, gets the matrix
        print(x)
        
        setm <- function(m) m <<- m     ## setm function, sets matrix in cache
        getm<-function() m              ## getm functions, get the matrix value
        
        setn <- function(n) n <<- n     ## setn function, sets the flag, TRUE/FALSE, for new matrix
        getn <- function() n            ## getn function, get flag value
        
        list(set = set, get = get,
             setm = setm,
             getm = getm,
             setn = setn,
             getn = getn)
        
}                                       ## End makeCacheMatrix



## cacheSolve R Programming Assignment 2

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## UtiliZes cache to store a matrix between functions. To save time a matrix is checked if
        ## an inversion function was performed on a matrix.  If TRUE, the matrix is outputted 
        ## with a message indicating it was a cached item.  If the flag indicates it has not been done FALSE,
        ## the function is preformed and the flag changed to TRUE.
        
        ## Variables
        ## _______________________________________________________________________
        
        
        n <- x$getn()   ## this is flag indicating a TRUE, inversion complete, FALSE no inversion.
        
        ## _______________________________________________________________________
        
        ## If - checks if inversion has been done, then print, else do inversion, print, reset flag. 
        
        if(n == TRUE) {                         
                ## TRUE, inversion done previously. 
                message("getting cached data")  ## Message to user,
                m <- x$getm()
                return(m)                       ## printing matrix from cache.
                
        }                               ## End, first part of If
        else{ 
                
                m <- x$get()            ## this is matrix stored in cache
                m <- solve(m)           ## Replacing the matrix with its inverse.
                
                x$setm(m)               ## replacing the inverse matrix to cache
                print(m)
                
                n <-TRUE                ## Setting flag, TRUE, "Yes! new matrix here!"
                x$setn(n)               ## replacing flag in cache. 
                
        }                               ## End If-Else
        
        
}                                       ## End cacheSolve function

