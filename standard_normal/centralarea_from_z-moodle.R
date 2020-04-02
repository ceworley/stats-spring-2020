library("exams")

s = 'centralarea_from_z'

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 200, name = s,
             stitle=s,
             dir = "out2",
             edir = "ex2",
             converter="pandoc-mathml")
