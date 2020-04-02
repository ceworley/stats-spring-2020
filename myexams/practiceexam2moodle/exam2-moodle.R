library("exams")

s = c('p1_cards','p2_probdist','p3_comb','p4_perm','p5_binomial','p6_bobhappy','p7_winlose')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 100, name = "practiceExam2",
             stitle=s,
             dir = "out",
             edir = "questions",
             points = 1,
             converter="pandoc-mathml")
