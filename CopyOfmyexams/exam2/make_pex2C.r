  library("exams")
  
  set.seed(4657)
  qs = sample(c("p1_cards.Rmd","p2_probdist.Rmd","tree_clothes3.Rmd","p4_comb.Rmd","p5_perm.Rmd","p6_binomial.Rmd"))
  
  exams2pdf(qs,
            name = "pex2C",
            dir = "wksht",
            edir = "questions",
            template = "templates/worksheet_sols_end.tex",     
            header = list(
              Date = "2019-OCT-15",
              ID = "001",
              Titl = "Exam 2 Practice C"
            )
  )
