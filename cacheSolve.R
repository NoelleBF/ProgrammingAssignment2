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