library("exams")

s = c('criteria')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 30, name = "list_counting_basic",
             stitle=s,
             dir = "out",
             converter="pandoc-mathml"
             )

tx  <- readLines("out/list_counting_basic.xml")
tx2  <- gsub(pattern = "𝐱", replace = "x", x = tx)
writeLines(tx2, con="out/list_counting_basic_fixed.xml")