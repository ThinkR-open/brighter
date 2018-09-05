colin::fill_desc("brighter",
                 "Random tools for Shiny dev",
                 "Random tools for easier shiny development",
                 "brighter")
colin::init_docs()

usethis::use_mit_license("ThinkR")
usethis::use_code_of_conduct()

colin::new_r_file("style")
colin::new_r_file("manip")
colin::new_r_file("tags")

usethis::use_package("htmltools")
usethis::use_package("glue")

usethis::use_test("style")
usethis::use_test("manip")
