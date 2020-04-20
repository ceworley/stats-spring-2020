library("exams")


s = c('total_dice_less')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 5, name = "CLT",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="tex2image")

