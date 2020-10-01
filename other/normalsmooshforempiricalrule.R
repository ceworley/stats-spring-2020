
x = (-2):2*pi/6
y = c(qnorm(0.02),qnorm(0.16),qnorm(0.5),-qnorm(0.16),-qnorm(0.02))

model = lm(y ~ x + I(tan(x)))
summary(model)

cf = model$coefficients

x2 = seq(-pi/3,pi/3,length.out=1000)
y2 = cf[2]*x2+cf[3]*tan(x2)

plot(x2,y2,type="l")