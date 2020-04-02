  library("exams")
  
  qs = c("p1_cards.Rmd","p2_probdist.Rmd","p3_treepizza2.Rmd","p4_comb.Rmd","p5_perm.Rmd","p6_binomial.Rmd")
  
  set.seed(1325) # 2A
  #set.seed(2)
  exams2pdf(qs,
            name = "pex2A",
            nsamp = 2,
            dir = "wksht",
            edir = "questions",
            template = "templates/worksheet_sols_end.tex",     
            header = list(
              Date = "2019-OCT-2",
              ID = "001",
              Titl = "Exam 2 Practice A"
            )
  )
