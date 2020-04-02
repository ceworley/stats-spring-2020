library("exams")

qs = c("compare_zs.Rmd","label_ticks.Rmd","shade.Rmd","sampling_mean.Rmd","sampling_proportion_more.Rmd","sums_simp.Rmd","binom_norm_approx.Rmd")

set.seed(8888)
exams2pdf(qs,
          name = "ex3",
          dir = "wksht",
          edir = "questions",
          template = "templates/ex3.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Exam 3"
          )
)
