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