library("exams")

s = c('bounds_from_centralarea','bounds_from_twotailarea')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "normal2",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")

