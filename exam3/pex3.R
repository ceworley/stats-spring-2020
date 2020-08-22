library("exams")

s = list("01_compare_zs.Rmd",
         "02_norm_probs.Rmd",
         c("03_total_between.Rmd","03_total_far.Rmd","03_total_less.Rmd","03_total_more.Rmd","03_total_near.Rmd"),
         c("04_ave_between.Rmd","04_ave_far.Rmd","04_ave_less.Rmd","04_ave_more.Rmd","04_ave_near.Rmd" ),
         c("05_binom_between.Rmd","05_binom_far.Rmd","05_binom_less.Rmd","05_binom_more.Rmd","05_binom_near.Rmd"),
         c("06_prop_between.Rmd","06_prop_far.Rmd","06_prop_less.Rmd","06_prop_more.Rmd","06_prop_near.Rmd"),
         c("07_x_from_la.Rmd","07_x_from_ra.Rmd"),
         c("08_z_from_ca.Rmd","08_z_from_ta.Rmd")
         )

stitle = c("01_compare_zs","02_norm_probs","03_total_prob","04_ave_prob","05_binom_prob","06_prop_prob","07_x_from_la_or_ra","08_z_from_ca_or_ta")

exams2moodle(s, n = 100, name = "ex3",
             stitle=stitle,
             dir = "out",
             edir = "questions",
             converter="pandoc-mathml")

