library("exams")

s = 'area_between_two_zs'

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 200, name = s,
             stitle=s,
             dir = "out2",
             edir = "ex2",
             converter="pandoc-mathml")
