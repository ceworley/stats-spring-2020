library("exams")

qs = c("leftarea_from_z.Rmd",
       "rightarea_from_z.Rmd",
       "centralarea_from_z.Rmd",
       "twotailarea_from_z.Rmd",
       "area_between_two_zs.Rmd",
       "z_from_left_area.Rmd",
       "z_from_right_area.Rmd",
       "z_from_central_area.Rmd",
       "z_from_twotail_area.Rmd"
       )

set.seed(1325) 
exams2html(qs,
          name = "SNpractice",
          dir = "out4",
          edir = "ex4",solution = F
)
