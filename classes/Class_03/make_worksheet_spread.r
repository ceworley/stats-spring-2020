library("exams")


q1 = "aad.Rmd"
q2 = "stdev.Rmd"
q3 = "estimate_mean_SD2.Rmd"


probs = c(q1,q1,q2,q2,q3,q3,q1,q2,q3)


set.seed(1234)
exams2pdf(probs, 
  n = 1,
  name = "AAD_and_SD",
  dir = "wksht",
  template = "templates/worksheet_sols.tex",     
  header = list(
    Date = "2019-SEP-11",
    ID = function(i) formatC(i, width = 3, flag = "0"),
    Titl = "MAD and SD"
  )
  )


