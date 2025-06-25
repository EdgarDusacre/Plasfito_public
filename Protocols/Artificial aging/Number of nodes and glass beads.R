#Charge packages
library(dplyr) 
library(ggplot2) 
library(forcats)
library(tidyr)
library(questionr)
library(deSolve)
library(tidyverse)
library(reshape2)
library(reshape)
library(tidyverse)
library(readxl)
library(skimr)
library(gmodels)
library(ggrepel)
library(lazyeval)
library(ggpubr)
library(car)
library(multcompView)
library(readr)
library(scales)
library(knitr)
library(yaml)
library(formatR)
library(patchwork)

#### ---------------------------------------- NODES ----------------------------------------- ####

#### Number of node per gram and ratio node/filament ####
#--------------------
##### pa_b095_n #####

node_mass1 <- c(0.01070, 0.01040, 0.01145)
node_nb1 <- c(6, 6, 6)
table1 <- tibble(node_mass1, node_nb1)
node_per1 <- round((mean(node_nb1)*mean(node_mass1))*100, digit = 0)
# stat1 <- table %>% summarise("Fishing net" = "epmo_pa_060_u",
#   "mean mass" = mean(node_mass1),
#   "sd mass" = sd(node_mass1), 
#   "mean nb" =  mean(node_nb1),
#   "sd nb" = sd(node_nb1),
#   "node percent in 1g" = node_per1)
# stat1

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per1/100) * FN)/mean(node_mass1), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### pa_b033_n #####

node_mass2 <- c(0.00218, 0.00155, 0.00170)
node_nb2 <- c(89, 94, 94)
table2 <- tibble(node_mass2, node_nb2)
node_per2 <- round((mean(node_nb2)*mean(node_mass2))*100, digit = 0)
# stat2 <- table %>% summarise("Fishing net" = "epmo_pa_035_u",
#   "mean mass" = mean(node_mass2), 
#   "sd mass" = sd(node_mass2), 
#   "mean nb" =  mean(node_nb2), 
#   "sd nb" = sd(node_nb2), 
#   "node percent in 1g" = node_per2)
# stat2

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per2/100) * FN)/mean(node_mass2), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### epmo_pa_060_u #####

node_mass1 <- c(0.0084, 0.0071, 0.0073)
node_nb1 <- c(7, 7, 6)
table1 <- tibble(node_mass1, node_nb1)
node_per1 <- round((mean(node_nb1)*mean(node_mass1))*100, digit = 0)
# stat1 <- table %>% summarise("Fishing net" = "epmo_pa_060_u",
#   "mean mass" = mean(node_mass1),
#   "sd mass" = sd(node_mass1), 
#   "mean nb" =  mean(node_nb1),
#   "sd nb" = sd(node_nb1),
#   "node percent in 1g" = node_per1)
# stat1

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per1/100) * FN)/mean(node_mass1), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### epmo_pa_033_u #####

node_mass2 <- c(0.0017, 0.0014, 0.0015)
node_nb2 <- c(95, 82, 96)
table2 <- tibble(node_mass2, node_nb2)
node_per2 <- round((mean(node_nb2)*mean(node_mass2))*100, digit = 0)
# stat2 <- table %>% summarise("Fishing net" = "epmo_pa_035_u",
#   "mean mass" = mean(node_mass2), 
#   "sd mass" = sd(node_mass2), 
#   "mean nb" =  mean(node_nb2), 
#   "sd nb" = sd(node_nb2), 
#   "node percent in 1g" = node_per2)
# stat2

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
FN <- as.numeric(FN)
Node_to_add <- round(((node_per2/100) * FN)/mean(node_mass2), digit = 0)
cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### epmo_pbs_060_u #####

node_mass3 <- c(0.0094, 0.0102, 0.0089)
node_nb3 <- c(7, 6, 5)
table3 <- tibble(node_mass3, node_nb3)
node_per3 <- round((mean(node_nb3)*mean(node_mass3))*100, digit = 0)
# stat3 <- table %>% summarise("Fishing net" = "epmo_pla_060_u",
#   "mean mass" = mean(node_mass3),
#   "sd mass" = sd(node_mass3), 
#   "mean nb" =  mean(node_nb3), 
#   "sd nb" = sd(node_nb3),
#   "node percent in 1g" = node_per3)
# stat3

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per3/100) * FN)/mean(node_mass3), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### epmo_pbs_060_n #####

node_mass4 <- c(0.0088, 0.0097, 0.0089)
node_nb4 <- c(7, 6, 5)
table4 <- tibble(node_mass4, node_nb4)
node_per4 <- round((mean(node_nb4)*mean(node_mass4))*100, digit = 0)
node_per4
# stat4 <- table %>% summarise("Fishing net" = "epmo_pla_060_n",
#   "mean mass" = mean(node_mass4),
#   "sd mass" = sd(node_mass4),
#   "mean nb" =  mean(node_nb4),
#   "sd nb" = sd(node_nb4), 
#   "node percent in 1g" = node_per4)
# stat4

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round((((node_per4/100) * FN)/mean(node_mass4)), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### epmo_pbs_035_u #####

node_mass5 <- c(0.0020, 0.0022, 0.0028)
node_nb5 <- c(76, 86, 83)
table5 <- tibble(node_mass5, node_nb5)
node_per5 <- round((mean(node_nb5)*mean(node_mass5))*100, digit = 0)
# stat5 <- table %>% summarise("Fishing net" = "epmo_pla_035_u",
#   "mean mass" = mean(node_mass5), 
#   "sd mass" = sd(node_mass5), 
#   "mean nb" =  mean(node_nb5),
#   "sd nb" = sd(node_nb5),
#   "node percent in 1g" = node_per5)
# stat5

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per5/100) * FN)/mean(node_mass5), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### epmo_pbs_035_n #####

node_mass6 <- c(0.0021, 0.0018, 0.0020)
node_nb6 <- c(76, 86, 83)
table6 <- tibble(node_mass6, node_nb6)
node_per6 <- round((mean(node_nb6)*mean(node_mass6))*100, digit = 0)
# stat6 <- table %>% summarise("Fishing net" = "epmo_pla_035_n",
#   "mean mass" = mean(node_mass6), 
#   "sd mass" = sd(node_mass6), 
#   "mean nb" =  mean(node_nb6), 
#   "sd nb" = sd(node_nb6), 
#   "node percent in 1g" = node_per6)
# stat6

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per6/100) * FN)/mean(node_mass6), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### Stjean_pe_u #####

node_mass7 <- c(2.17, 2.11, 2.22, 2.05, 2.06)
node_nb7 <- c(4, 4, 4, 4, 4)
table7 <- tibble(node_mass7, node_nb7)
node_per7 <- round(((mean(node_nb7)/10)*mean(node_mass7))*100, digit = 1)
node_per7
# stat7 <- table %>% summarise("mean mass" = mean(node_mass7), 
#                              "sd mass" = sd(node_mass7), 
#                              "mean nb" =  mean(node_nb7), 
#                              "sd nb" = sd(node_nb7), 
#                              "node percent in 1g" = node_per7)
# stat7

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per7/100) * FN)/mean(node_mass7), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
##### Pasaia PA #####

node_mass8 <- c(0.00111, 0.00107, 0.00102, 0.00115, 0.00100, 
                 0.00127, 0.00125, 0.00112, 0.00116)
node_nb8 <- rep(c(134, 139, 145), each = 3)
table8 <- tibble(node_mass8, node_nb8)
node_per8 <- round(((mean(node_nb8))*mean(node_mass8))*100, digit = 1)
node_per8
# stat8 <- table %>% summarise("mean mass" = mean(node_mass8), 
#                              "sd mass" = sd(node_mass8), 
#                              "mean nb" =  mean(node_nb8), 
#                              "sd nb" = sd(node_nb8), 
#                              "node percent in 1g" = node_per8)
# stat8

##To calculate the number of node needed in function of the total mass of fishing net (FN) used:
{FN <- readline("Enter your total mass of FN: ")
  FN <- as.numeric(FN)
  Node_to_add <- round(((node_per8/100) * FN)/mean(node_mass8), digit = 0)
  cat("The number of node in the sample must be: ", Node_to_add)
}

#--------------------
#Resume table of the fishing nets ration node/filament
# Resume <- bind_rows(stat1, stat2, stat3, stat4, stat5, stat6)
# Resume 


##### ------------------------------------ GLASS BEADS ----------------------------------------- #####

##To know how much glass bead we have to add in the samples
# We decided to add the number of glass bead the equivalent of 1/4 of the total FN mass of the sample
mass_GB <- 0.0097

{FN <- readline("Enter your total mass of FN: ")
FN <- as.numeric(FN)
GB_to_add <- round(FN*(1)/mass_GB, digit = 0)
cat("The number of glass beads to add is: ", GB_to_add)
}




