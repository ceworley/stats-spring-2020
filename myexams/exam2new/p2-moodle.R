library("exams")

s = 'p2_probdist'

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 10, name = s,
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")
