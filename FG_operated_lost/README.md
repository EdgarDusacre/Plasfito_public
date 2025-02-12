# Welcome in the R software created to estimat the quantity of fishing gear operated and lost in the Southeastern Bay of Biscay betweeen Novemeber 2022 and November 2023

!!! All the data and methods are currently under submission in a scientific journal. We will update this repository as soon as the article is published !!!

We recommend to use the latest version of Rstudio to run the different scripts.

The first part is made to downscale to a local area and a local fishery, the numerical model created by Brandon Kuczenski ([Original repository]([https://pages.github.com/](https://github.com/bkuczenski/unit_gears)). 

You can access to the scientific publications related with the link below:
[A model for the intensity of fishing gear](10.1111/jiec.13156)
[Plastic gear loss estimates from remote observation of industrial fishing activity](10.1111/faf.12596)

The second part is made to use the sociological study that did Kelsey Richardson and her team, to make statistical models to estimate the FG lost in a defined area with a local fishery.
You can access to the scientific publication related with the link below:
[Global estimates of fishing gear lost to the ocean each year](10.1126/sciadv.abq0135)

## Part 1: Downscaling the model of Kuczesnki et al. (2021)
### Process 
Open the "Project_FG_operated_lost.Rproj" Rstudio environment 
Enter in the "Rscripts" folder 

1-Run Fleet_numerical_model.Rmd

2-Enter in the folder software_kuczenski_et_al_2021

  2.1-Follow the README of the folder


## Part 2: Using the sociological study of Richardson et al. (2022) and create statistical models
### Process 
Open the "Project_FG_operated_lost.Rproj" Rstudio environment 
Enter in the "Rscripts" folder 

1-Run Stat_model_AIS.Rmd

2-Stat_model_no_AIS.Rmd

## Plots and final data frames 
If you want to see final plots and data frames made with the data:
1-Run Final_df_plots.Rmd

##Data
All the data needed are in the folder "data". 

  
