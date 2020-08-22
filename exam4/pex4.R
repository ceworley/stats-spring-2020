library("exams")

s = list("conf_int_prop",
         "conf_int_z",
         "hyptest_prop",
         "hyptest",
         "n_from_ME_prop",
         "n_from_ME")
myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "ex4",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")
