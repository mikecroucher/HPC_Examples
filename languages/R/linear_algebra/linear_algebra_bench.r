#A set of linear algebra benchmarks
#Based on post at http://blog.revolutionanalytics.com/2014/10/revolution-r-open-mkl.html
args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
  stop("Need to supply an output filename to this script", call.=FALSE)
}
filename = args[1]
print(paste("Output will be saved to ",filename))
# Initialization
set.seed (1)
m <- 10000
n <-  5000
A <- matrix (runif (m*n),m,n)

# Matrix multiply
sprintf("Matrix multiply two  %d by %d matrices", m,n)
mat_time=system.time (B <- crossprod(A))
print(mat_time)
#Extract just the elapsed time
mat_time = mat_time[3]

# Cholesky Factorization
print(paste("Cholesky Factorization of ",dim(B)[1],"by",dim(B)[2],"matrix"))
chol_time=system.time (C <- chol(B))
print(chol_time)
#Extract just the elapsed time
chol_time = chol_time[3]

# Singular Value Deomposition
m <- 10000
n <- 2000
A <- matrix (runif (m*n),m,n)
print(paste("SVD of ",dim(A)[1],"by",dim(A)[2],"matrix"))
svd_time=system.time (S <- svd (A,nu=0,nv=0))
print(svd_time)
#Extract just the elapsed time
svd_time = svd_time[3]

# Principal Components Analysis
m <- 10000
n <- 2000
A <- matrix (runif (m*n),m,n)
print(paste("prcomp of ",dim(A)[1],"by",dim(A)[2],"matrix"))
pca_time=system.time (P <- prcomp(A))
print(pca_time)
#Extract just the elapsed time
pca_time = pca_time[3]

# Linear Discriminant Analysis
library('MASS')
g <- 5
k <- round (m/2)
A <- data.frame (A, fac=sample (LETTERS[1:g],m,replace=TRUE))
train <- sample(1:m, k)
print("Linear Discriminant Analysis")
lda_time=system.time (L <- lda(fac ~., data=A, prior=rep(1,g)/g, subset=train))
print(lda_time)
#Extract just the elapsed time
lda_time = lda_time[3]

#construct the output data frame
output = data.frame(MatMul=mat_time,Chol=chol_time,SVD=svd_time,PCA=pca_time,LDA=lda_time)
saveRDS(output,file=filename)
