library("exams")

qs = list("p1_hists.Rmd",
          "p2_cards.Rmd",
          c("p3_compare_zs_furthest.Rmd",
            "p3_compare_zs_smallest.Rmd",
            "p3_compare_zs_largest.Rmd"),
          "p4_normal_prob.Rmd",
          "p5_clt.Rmd",
          "p6_mean_ci_s_flower.Rmd",
          "p7_p_single_test_right_guessing.Rmd",
          "p8_make_scatter_plot.Rmd",
          c("binom_norm_approx.Rmd",
            "binom_norm_approx2.Rmd",
            "binom_norm_approx3.Rmd",
            "binom_norm_approx4.Rmd"),
          "mean_twotail_t_raw.Rmd"
          )

set.seed(12345)

exams2pdf(qs,
          n=30,
          name = "final_",
          dir = "wksht",
          edir = "questions",
          template = "templates/final.tex",
          header = list(
            Date = "2019-OCT-2",
            ID = function(i){gsub(" ", "0", format(i, width = 3))}
          )
)

set.seed(12345)

exams2pdf(qs,
          n=30,
          name = "ans_final_",
          dir = "wksht",
          edir = "questions",
          template = "templates/final_ans.tex",
          header = list(
            Date = "2019-OCT-2",
            ID = function(i){gsub(" ", "0", format(i, width = 3))}
          )
)

