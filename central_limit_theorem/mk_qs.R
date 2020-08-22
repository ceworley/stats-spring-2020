library("exams")

# s = c('total_dice_less')
# s = c('ave_less')
# s = c('total_more')
# s = c('total_more','ave_more')
# s = c('total_more','total_near','total_far','ave_near','ave_far')
s = c('binom_less','binom_more','binom_between','prop_less','prop_more','prop_between')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "CLT",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")

