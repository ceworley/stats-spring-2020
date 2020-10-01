ps = c(0.02,0.16,0.50,0.84,0.98)
besterror = 1000
bestshape = 1
for(shape in seq(1.1,10,0.001)){
  p1 = pbeta(1/6,shape,shape)
  p2 = pbeta(1/3,shape,shape)
  error = (p1-0.02)^6 + (p2-0.16)^6
  if(error<besterror){
    besterror = error
    bestshape = shape
  }
}
print(bestshape)
print(pbeta(1/6,bestshape,bestshape))
print(pbeta(1/3,bestshape,bestshape))
