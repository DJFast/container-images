install.packages("BiocManager", repos = "http://cran.us.r-project.org"); BiocManager::install(version = "3.14")

#add any packages you need here
BiocManager::install(
    c("tidyverse", "scales")
)