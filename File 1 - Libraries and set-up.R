
# File 1 - Libraries and set-up

# the RODBC library is needed for connecting through ODBC.

library(RODBC)
library(odbc)
library(sqldf)



library(glmnet)  # for variable selection (LASSO)
library(car)     # for the vif function (!!!)
library(broom)   # for combining logistic regression results

# Things related to tables:

library(MASS)    # for working out some examples with table.
library(DataExplorer)
library(skimr)
library(summarytools)
library(xtable)  # export tables to LaTex and HTML


library(pwr)      # for power analysis.

library(rpart)          # for decision tree.
library(rpart.plot)      # for decision tree.
library(randomForest)    # for random forests.
library(summariser)     # summary statistics and confidence intervals.


# for tree example:  
# https://www.datacamp.com/community/tutorials/decision-trees-R

library(tree)   
library(ISLR)   

library(Amelia)  # missing values.
library(mice)    # missing values.
library(Hmisc)   # descriptive statistics, but also missing values.

library(tidyverse)
# library(plyr)
# library(dplyr)    # always do this **AFTER** plyr and MASS!

library(magrittr)
library(psych)
library(lubridate)
library(reshape)
library(reshape2)
library(DBI)
library(dbplyr)
library(readr)
library(odbc)

library(foreign)


# Set up the channel to connect to Hive_Ranger, where the dops_cx data is:

# channel_hive_ranger <- odbcConnect("Hive_Ranger")

# This lists the tables.
#lTables(channel_hive_ranger, schema="dops_cx")


# Set up the channel to connect to Hive_Ranger, where the dops_cx data is:

# channel_HPC_Hive <- odbcConnect("HPC_Hive")

# # This lists the tables.
# sqlTables(channel_HPC_Hive, schema="dops_cx")



# Pull the data sets.
# cx_combination_test <- sqlFetch(channel_hive_ranger,"dops_cx.cx_combination")
# class(cx_combination)



