library("exams")

q1 = "percentile_sorted_data_index.Rmd"
q2 = "percentile_sorted_data.Rmd"
q3 = "sd_rule5.Rmd"
q4 = "hist_reading2.Rmd"

qs = c(q1,q1,q2,q2,q4,q4,q3,q3)

probs = qs
#exams2pdf(probs,
#  n = 1,
#  name = "review_no_sol_2B",
#  dir = "wksht",
#  template = "templates/homework.tex", 
#  header = list(
#    Date = "2019-SEP-24",
#    ID = "001"
#  )
#  )

set.seed(12345)

exams2pdf(probs, 
          n = 1,
          name = "Percentile",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-SEP-19",
            ID = "001",
            Titl = "Percentile"
          )
)

