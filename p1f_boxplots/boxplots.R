library("exams")

s = c('read_boxplot',
      'identify_distributions_boxplots',
      'compare_boxplots')

myexam <- c(paste(s,".Rmd",sep=""))

exams2moodle(myexam, n = 10,name="boxplots",
             stitle=s,
             dir = "out",
             converter="pandoc-mathml"
             )

tx  <- readLines("out/boxplots.xml")
tx2  <- gsub(pattern = "𝐱", replace = "x", x = tx)
writeLines(tx2, con="out/boxplots_fixed.xml")


