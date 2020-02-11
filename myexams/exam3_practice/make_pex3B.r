      library("exams")
      
      qs = c("compare_zs.Rmd","label_ticks.Rmd","shade.Rmd","Normal_areas.Rmd","aves_simp.Rmd","sampling_mean.Rmd","sampling_proportion_CL.Rmd","sampling_proportion.Rmd","sums_simp.Rmd","binom_norm_approx_CL.Rmd","binom_norm_approx2.Rmd")
      
      set.seed(95) # 3B
      exams2pdf(qs,
                name = "pex3B",
                dir = "wksht",
                edir = "questions",
                template = "templates/pex3.tex",     
                header = list(
                  Date = "2019-OCT-2",
                  ID = "001",
                  Titl = "Exam 3 Practice B"
                )
      )
