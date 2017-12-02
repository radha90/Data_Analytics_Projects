library(dplyr)
seed <- 42 

#=======================================================================
# Rattle timestamp: 2017-11-24 15:36:23 x86_64-w64-mingw32 

# Load a dataset from file.

fname         <- "file:///C:/Users/smart/Documents/PSU/DAAN 881/ProjectDAAN881/H1BData_AfterDataPrep_Oversampled.csv" 
dataset <- read.csv(fname,
                        na.strings=c(".", "NA", "", "?"),
                        strip.white=TRUE, encoding="UTF-8")

#=======================================================================
# Rattle timestamp: 2017-11-24 15:36:24 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# Build the train/validate/test datasets.

# nobs=49729 train=34810 validate=7459 test=7460

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) %>%
  sample(0.15*nobs) ->
  validate

nobs %>%
  seq_len() %>%
  setdiff(train) %>%
  setdiff(validate) ->
  test

# The following variable selections have been noted.

input     <- c("CASE_STATUS", "EMPLOYMENT_PERIOD",
                   "EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE",
                   "SOC_CODE", "NAIC_CODE", "TOTAL_WORKERS",
                   "PREVAILING_WAGE", "PW_UNIT_OF_PAY",
                   "PW_WAGE_SOURCE", "PW_SOURCE_YEAR",
                   "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM",
                   "WORKSITE_STATE")

numeric   <- c("EMPLOYMENT_PERIOD", "NAIC_CODE",
                   "TOTAL_WORKERS", "PW_SOURCE_YEAR")

categoric <- c("CASE_STATUS", "EMPLOYER_NAME",
                   "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE",
                   "PREVAILING_WAGE", "PW_UNIT_OF_PAY",
                   "PW_WAGE_SOURCE", "PW_SOURCE_OTHER",
                   "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE")

target    <- "IMO_H.1B_DEPENDENT"
risk      <- NULL
ident     <- NULL
ignore    <- NULL
weights   <- NULL

#=======================================================================
# Rattle timestamp: 2017-11-24 15:36:31 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# The following variable selections have been noted.

input     <- c("CASE_STATUS", "EMPLOYMENT_PERIOD",
                   "EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE",
                   "SOC_CODE", "NAIC_CODE", "TOTAL_WORKERS",
                   "PREVAILING_WAGE", "PW_UNIT_OF_PAY",
                   "PW_WAGE_SOURCE", "PW_SOURCE_YEAR",
                   "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM",
                   "WORKSITE_STATE")

numeric   <- c("EMPLOYMENT_PERIOD", "NAIC_CODE",
                   "TOTAL_WORKERS", "PW_SOURCE_YEAR")

categoric <- c("CASE_STATUS", "EMPLOYER_NAME",
                   "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE",
                   "PREVAILING_WAGE", "PW_UNIT_OF_PAY",
                   "PW_WAGE_SOURCE", "PW_SOURCE_OTHER",
                   "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE")

target    <- "IMO_H.1B_DEPENDENT"
risk      <- NULL
ident     <- NULL
ignore    <- NULL
weights   <- NULL

#=======================================================================
# Rattle timestamp: 2017-11-24 15:36:37 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# The following variable selections have been noted.

input     <- c("EMPLOYMENT_PERIOD", "EMPLOYER_NAME",
                   "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE",
                   "NAIC_CODE", "TOTAL_WORKERS", "PREVAILING_WAGE",
                   "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE",
                   "PW_SOURCE_YEAR", "PW_SOURCE_OTHER",
                   "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE",
                   "IMO_H.1B_DEPENDENT")

numeric   <- c("EMPLOYMENT_PERIOD", "NAIC_CODE",
                   "TOTAL_WORKERS", "PW_SOURCE_YEAR")

categoric <- c("EMPLOYER_NAME", "EMPLOYER_ADDRESS",
                   "JOB_TITLE", "SOC_CODE", "PREVAILING_WAGE",
                   "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE",
                   "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM",
                   "WORKSITE_STATE", "IMO_H.1B_DEPENDENT")

target    <- "CASE_STATUS"
risk      <- NULL
ident     <- NULL
ignore    <- NULL
weights   <- NULL

#=======================================================================
# Rattle timestamp: 2017-11-24 15:36:55 x86_64-w64-mingw32 

# Remap variables. 

# Transform into a numeric.

dataset[["TNM_EMPLOYER_NAME"]] <- as.numeric(dataset[["EMPLOYER_NAME"]])
dataset[["TNM_EMPLOYER_ADDRESS"]] <- as.numeric(dataset[["EMPLOYER_ADDRESS"]])
dataset[["TNM_JOB_TITLE"]] <- as.numeric(dataset[["JOB_TITLE"]])
dataset[["TNM_SOC_CODE"]] <- as.numeric(dataset[["SOC_CODE"]])
dataset[["TNM_PREVAILING_WAGE"]] <- as.numeric(dataset[["PREVAILING_WAGE"]])
dataset[["TNM_PW_UNIT_OF_PAY"]] <- as.numeric(dataset[["PW_UNIT_OF_PAY"]])
dataset[["TNM_PW_WAGE_SOURCE"]] <- as.numeric(dataset[["PW_WAGE_SOURCE"]])
dataset[["TNM_PW_SOURCE_OTHER"]] <- as.numeric(dataset[["PW_SOURCE_OTHER"]])
dataset[["TNM_WAGE_RATE_OF_PAY_FROM"]] <- as.numeric(dataset[["WAGE_RATE_OF_PAY_FROM"]])
dataset[["TNM_WORKSITE_STATE"]] <- as.numeric(dataset[["WORKSITE_STATE"]])
dataset[["TNM_IMO_H.1B_DEPENDENT"]] <- as.numeric(dataset[["IMO_H.1B_DEPENDENT"]])

#=======================================================================
# Rattle timestamp: 2017-11-24 15:36:56 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# The following variable selections have been noted.

input     <- c("EMPLOYMENT_PERIOD", "NAIC_CODE",
                   "TOTAL_WORKERS", "PW_SOURCE_YEAR",
                   "TNM_EMPLOYER_NAME", "TNM_EMPLOYER_ADDRESS",
                   "TNM_JOB_TITLE", "TNM_SOC_CODE",
                   "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_WORKSITE_STATE",
                   "TNM_IMO_H.1B_DEPENDENT")

numeric   <- c("EMPLOYMENT_PERIOD", "NAIC_CODE",
                   "TOTAL_WORKERS", "PW_SOURCE_YEAR",
                   "TNM_EMPLOYER_NAME", "TNM_EMPLOYER_ADDRESS",
                   "TNM_JOB_TITLE", "TNM_SOC_CODE",
                   "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_WORKSITE_STATE",
                   "TNM_IMO_H.1B_DEPENDENT")

categoric <- NULL

target    <- "CASE_STATUS"
risk      <- NULL
ident     <- NULL
ignore    <- c("EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE", "PREVAILING_WAGE", "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE", "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE", "IMO_H.1B_DEPENDENT")
weights   <- NULL

#=======================================================================
# Rattle timestamp: 2017-11-24 15:37:05 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# The following variable selections have been noted.

input     <- c("EMPLOYMENT_PERIOD", "NAIC_CODE",
                   "TOTAL_WORKERS", "PW_SOURCE_YEAR",
                   "TNM_EMPLOYER_NAME", "TNM_EMPLOYER_ADDRESS",
                   "TNM_JOB_TITLE", "TNM_SOC_CODE",
                   "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_WORKSITE_STATE",
                   "TNM_IMO_H.1B_DEPENDENT")

numeric   <- c("EMPLOYMENT_PERIOD", "NAIC_CODE",
                   "TOTAL_WORKERS", "PW_SOURCE_YEAR",
                   "TNM_EMPLOYER_NAME", "TNM_EMPLOYER_ADDRESS",
                   "TNM_JOB_TITLE", "TNM_SOC_CODE",
                   "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_WORKSITE_STATE",
                   "TNM_IMO_H.1B_DEPENDENT")

categoric <- NULL

target    <- "CASE_STATUS"
risk      <- NULL
ident     <- NULL
ignore    <- c("EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE", "PREVAILING_WAGE", "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE", "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE", "IMO_H.1B_DEPENDENT")
weights   <- NULL

# Principal Components Analysis (on numerics only).

pc <- prcomp(na.omit(dataset[, numeric]), scale=TRUE, center=TRUE, tol=0)
pcd <- data.frame(pc$rotation)
i <- 1
col <- ""
p <- ""
attributes <- c()
for(col in colnames(pcd)[1:6]){
  #print(paste0(col, ", ", pcd[,col]))
  for(p in seq_along(pcd[,col])){
    # if(col == "PC5"){
    #   print(paste0(abs(pcd[,col][p] >= 0.5," ",pcd[,col][p]))
    # }
    if(abs(pcd[,col][p]) >= 0.5){
      #print(row.names(pcd))
      attributes[i] <- row.names(pcd)[p]
      i <- i+1
    }
  }
}
print("Eigen Value One Criterion")
print(sort(unique(attributes)))

summ <- summary(pc)

i <- 1
col <- ""
p <- ""
attributes <- c()
for(col in colnames(pcd)[1:12]){
  for(p in seq_along(pcd[,col])){
    if(abs(pcd[,col][p]) >= 0.5){
      attributes[i] <- row.names(pcd)[p]
      i <- i+1
    }
  }
}
print("Proportion of Variance")
print(sort(unique(attributes)))



