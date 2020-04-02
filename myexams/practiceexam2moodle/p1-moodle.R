library("exams")

s = 'p1_cards'

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = s,
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")
