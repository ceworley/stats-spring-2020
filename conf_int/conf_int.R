library("exams")

# s = "confint"
# s = "hyptest"
# s = c("conf_int_prop","hyptest_prop")
s = c("n_from_ME","n_from_ME_prop")

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "confint",
             stitle=s,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")

