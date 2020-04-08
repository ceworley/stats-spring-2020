library("exams")

s = c('leftarea_from_x','rightarea_from_x','centralarea_from_x','twotailarea_from_x','betweenarea_from_x')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "normal",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")

