library("exams")

s = c('p1_cards','p2_probdist','p3_comb','p4_perm','p5_binomial','p6_bobhappy','p7_winlose')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 20, name = "exam2b",
             stitle=s,
             dir = "out",
             edir = "questions",
             points = list(c(3,3,3,3,3,3,2),
                        c(3,3,3,3,4,4),
                        10,
                        10,
                        c(3,3,2,2,2,2,3,3),
                        10,
                        c(3,3,4)),
             converter="pandoc-mathml")
