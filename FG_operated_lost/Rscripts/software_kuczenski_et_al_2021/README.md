
!!! This software in coming from the repository of Brandon Kuczenski !!!
![](https://zenodo.org/badge/doi/10.5281/zenodo.4706051.svg) 
([JIE article](https://doi.org/10.1111/jiec.13156))
([WYLEY article](https://doi.org/10.1111/faf.12596))


Here you can find only the scripts used for the Plasfito Research Project when we had to make some modifications to fit with our local fischery.

# scoping-gear-losses
Estimation of lost fishing gear based on observed vessel activity

## To reproduce the study results

### Part 1 - Catch and Effort Modeling

This section will enable you to get the necessary file to run the python model to estimate operated and lost fishing gear in your local area.

This section is executed in R. We recommend Rstudio. This code requires the data present in the `data` directory and populates CSV files in `output`.

 1. Open the R project file in the present directory.
 2. Source "R/set_up.R" Required packages should be installed automatically.
 3. In sequence, run the scripts in the `scripts/analysis` directory:
    1. cleans_fao_datarepository.Rmd
    2. match_catch_effort.Rmd

### Part 2 - Modelling the operated and lost quantity of fishing gear for your period and local fischery

Use the file "output/catch_effort_ind.csv" to run the python model. The model will estimate the operated and lost quantity of fishing gear for your local fischery.

 1. Open the python project file from the github repository ([Github Repository of Brandon Kuczneski](https://github.com/bkuczenski/scoping-gear-losses)).
 2. Adapt the script "fishery.py" to fit with your data and to get the specific results for your local fischery.
 2. Run the script "run_simulation.py" Required packages should be installed automatically.
 3. The script will generate a CSV file named "gear_diss_results_script.csv" with the results.

## Repository Structure

```
-- data
   |__fao_landings
   |__gfw
   |__perez-roda_discards
   |__watson
-- doc
-- mapping_tables
-- output
   |__figures
   |__simulation
-- R
-- scripts
   |__analysis
   |__mapping_tables
-- .gitignore
-- .Rhistory
-- README.md
    
```

- **data:** contains all the raw data used in this part of the project organized by data source. The four main data source are: 
   - fao_landings: FAO publicly available global production
   - gfw: Global Fishing Watch vessel activity data. This data is not publicly available.
   - perez-roda_discards: publicly available data used in the FAO Third Assessment of Global discards
   - watson: Reginald Watson (2019) Global Fisheries Landings V4.0, Australian Ocean Data Network

For more detail on each data source please see [Wiki](https://github.com/bkuczenski/tnc-gear-data/wiki/data-(raw))

- **mapping_tables:** all files used to re-conciliate countries, species, gear and FAO area names between data sources. This files were created for this project. Find more information about the content of these tables [here](https://github.com/bkuczenski/tnc-gear-data/wiki/Metadata:-Mapping-Tables)
   - **intermediate_files:** intermediate files used to create the countries mapping table. Files in this folder were altered manually. 
   
- **output:** contains all files created through the scripts of this project. All files can be reproduced by running one of the scripts and are part of the core results of the project
   
- **R:** R scripts that contain all functions needed for the project. Scripts are organized by data source.

- **scripts:** core data processing of the project.
   - **analysis:** Three main steps to reconcile catch and effort data: classify species into a logical fishery, group landings by fisheries gear type and match to effort data
