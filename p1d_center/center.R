library("exams")

s = c('get_mean',
      'get_median',
      'compare_mean_median')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 10,name="center",
             stitle=s,
             dir = "out",
             converter="pandoc-mathml"
             )

tx  <- readLines("out/center.xml")
tx2  <- gsub(pattern = "𝐱", replace = "x", x = tx)
writeLines(tx2, con="out/center_fixed.xml")


