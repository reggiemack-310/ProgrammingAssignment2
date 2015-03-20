##-----------------------------------------------------------------------------
##
## Module = testCacheMatrix.R
## 
## This module will test cachematrix.R
##
## Please ensure that cachematrix.r is in your working directory. Then just run
## this module. If all is set up correctly then you should receive notification
## that the: "Test of cachematrix.R was successful!!!"
##
##-----------------------------------------------------------------------------

##-----------------------------------------------------------------------------
## Clear the current environment of all objects.
##-----------------------------------------------------------------------------
rm(list=ls())

##-----------------------------------------------------------------------------
## This next source instruction assumes that you have the cachematrix.R script
## in your current working directory ...
##-----------------------------------------------------------------------------
source('cachematrix.R')

##-----------------------------------------------------------------------------
## Test the functions in cachematrix.R
##-----------------------------------------------------------------------------

##-----------------------------------------------------------------------------
## Create an invertible matrix, then ...
## Initialize cache and named functions list
##-----------------------------------------------------------------------------
m <- matrix(c(-1, -2, 1, 1), 2,2)            # creates an invertible matrix m
m                                            # View matrix m
x <- makeCacheMatrix(m)                      # generate functions list as x
x                                            # View functions list
x$get()                                      # get cached invertible matrix


##-----------------------------------------------------------------------------
## Compute or retrieve an inverse of the matrix passed
##-----------------------------------------------------------------------------
mInv1 <- cacheSolve(x,m)                     # Compute inverse to mInv1
mInv1                                        # View inverse
mInv2 <- cacheSolve(x,m)                     # Retrieve inverse to mInv2
mInv2                                        # View inverse
mInv3 <- cacheSolve(x,mInv2)                 # Compute inverse of mInv2 to mInv3
mInv3                                        # View inverse of mInv3


##-----------------------------------------------------------------------------
## Indicate if test is successful
##-----------------------------------------------------------------------------
if(identical(m,mInv3)) message("Test of cachematrix.R is successful!!!")
