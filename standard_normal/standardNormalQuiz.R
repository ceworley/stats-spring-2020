library("exams")

files = list.files("ex4")
stitle = sub('\\.Rmd$', '', files) 
myexam <- files

exams2moodle(myexam, n = 30, name = "SNQ",
             stitle = stitle,
             dir = "out4",
             edir = "ex4",
             converter="pandoc-mathml")


