set.seed(123)
nsides=6
nrolls=20
nreps=1
x <- sample(1:nsides,nrolls*nreps,T)
x <- matrix(x,nreps)
xbar <- apply(x,1,mean)
tot <- apply(x,1,sum)
if(nreps==1){
  X = c(x)
} else {
  X = data.frame(x=apply(x,2,as.vector))#,mean=xbar,total=tot)
}


