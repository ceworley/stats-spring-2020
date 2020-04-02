library("exams")

qs = c("compare_zs_smallest.Rmd","label_ticks.Rmd","shade.Rmd","sampling_mean.Rmd","sampling_proportion_more.Rmd","sums_simp.Rmd","binom_norm_approx.Rmd")

set.seed(9999)
exams2pdf(qs,
          name = "pex3G",
          dir = "wksht",
          edir = "questions",
          template = "templates/pex3.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Exam 3 Practice G"
          )
)
