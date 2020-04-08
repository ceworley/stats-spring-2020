library("exams")

s = c('compare_zs')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "normal3",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")

