library("exams")

set.seed(321)
qs = c("p1_hists.Rmd")

exams2pdf(qs,
          name = "Final_A",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Final Practice A"
          )
)



 
  
 
 
