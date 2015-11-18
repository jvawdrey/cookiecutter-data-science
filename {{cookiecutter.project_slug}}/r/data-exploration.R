################################################################################
##
##  Filename:          data-exploration.R
##  Client:            {{cookiecutter.client}}
##  Project:           {{cookiecutter.project_name}}
##  Contact:           {{cookiecutter.full_name}} ({{cookiecutter.full_name}})
##  Created:           {{cookiecutter.created_date}}
##  Description:       This script contains data exploration code used to
##                     audit, understand and visualize available data
##  Input Tables:      * <table used in this script>
##                     * <table used in this script>
##  Output Table:      * N/A (Ideally data exploration should not create tables)
##
################################################################################


################################################################################
##	SETUP
################################################################################

# Dependencies
# package:: RPostgreSQL
if("RPostgreSQL" %in% rownames(installed.packages()) == FALSE)
  install.packages("RPostgreSQL")
library(RPostgreSQL)

# package:: randomForest
#if("randomForest" %in% rownames(installed.packages()) == FALSE)
#  install.packages("randomForest")
#library(randomForest)

# package:: rpart
#if("rpart" %in% rownames(installed.packages()) == FALSE)
#  install.packages("rpart")
#library(rpart)

# package:: pROC
#if("pROC" %in% rownames(installed.packages()) == FALSE)
#  install.packages("pROC")
#library(pROC)

# package:: ROCR
#if("ROCR" %in% rownames(installed.packages()) == FALSE)
#  install.packages("ROCR")
#library(ROCR)

# package:: e1071
#if("e1071" %in% rownames(installed.packages()) == FALSE)
#  install.packages("e1071")
#library(e1071)

# package:: usdm
#if("usdm" %in% rownames(installed.packages()) == FALSE)
#  install.packages("usdm")
#library(usdm)

# package:: SDMTools
#if("SDMTools" %in% rownames(installed.packages()) == FALSE)
#  install.packages("SDMTools")
#library(SDMTools)

# package:: fmsb
#if("fmsb" %in% rownames(installed.packages()) == FALSE)
#  install.packages("fmsb")
#library(fmsb)

# package:: graphics
#if("graphics" %in% rownames(installed.packages()) == FALSE)
#  install.packages("graphics")
#library(graphics)

# package:: corrplot
#if("corrplot" %in% rownames(installed.packages()) == FALSE)
#  install.packages("corrplot")
#library(corrplot)

################################################################################
# Options
options(scipen=5)

################################################################################
# Connect to HAWQ/Greenplum/Postgres
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv,
                 host='localhost',
                 port='5432',
                 dbname='postgres',
                 user='username',
                 password='password')

################################################################################
