library("exams")


myexam <- c("compare_zs.Rmd",
            "leftarea_from_x.Rmd",
            "rightarea_from_x.Rmd",
            "centralarea_from_x.Rmd",
            "twotailarea_from_x.Rmd",
            "betweenarea_from_x.Rmd",
            "x_from_leftarea.Rmd",
            "x_from_rightarea.Rmd",
            "bounds_from_centralarea.Rmd",
            "bounds_from_twotailarea.Rmd")

exams2html(myexam, n = 1, name = "normal examples",
             dir = "out",
             edir = "questions2")

