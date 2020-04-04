library("exams")

s = c('centralarea_from_x')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "normal",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")

