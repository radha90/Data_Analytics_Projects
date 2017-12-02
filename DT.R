library(dplyr)
options(scipen = 999)
seed <- 42 

#=======================================================================
# Rattle timestamp: 2017-11-24 13:00:11 x86_64-w64-mingw32 

# Load a dataset from file.

fname         <- "file:///C:/Users/smart/Documents/PSU/DAAN 881/ProjectDAAN881/H1BData_AfterDataPrep_Oversampled.csv" 
dataset <- read.csv(fname,
                        na.strings=c(".", "NA", "", "?"),
                        strip.white=TRUE, encoding="UTF-8")

#=======================================================================
# Rattle timestamp: 2017-11-24 13:00:12 x86_64-w64-mingw32 

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
# Rattle timestamp: 2017-11-24 13:00:22 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# Build the train/validate/test datasets.

# nobs=49729 train=34810 validate=14919 test=0

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


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
# Rattle timestamp: 2017-11-24 13:00:40 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# Build the train/validate/test datasets.

# nobs=49729 train=34810 validate=14919 test=0

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


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
# Rattle timestamp: 2017-11-24 13:00:43 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# Build the train/validate/test datasets.

# nobs=49729 train=34810 validate=14919 test=0

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


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
#__________________________________________________________________________________________________________________________
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
# Rattle timestamp: 2017-11-24 13:45:35 x86_64-w64-mingw32 

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

#____________________________________________________________________________________________________________________
#=======================================================================
# Rattle timestamp: 2017-11-24 13:45:40 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# Build the train/validate/test datasets.

# nobs=49729 train=34810 validate=14919 test=0

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


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

# nobs=49729 train=34810 validate=14919 test=0

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


# The following variable selections have been noted.

input     <- c("EMPLOYMENT_PERIOD", "TOTAL_WORKERS",
                   "PW_SOURCE_YEAR", "TNM_EMPLOYER_ADDRESS",
                   "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM")

numeric   <- c("EMPLOYMENT_PERIOD", "TOTAL_WORKERS",
                   "PW_SOURCE_YEAR", "TNM_EMPLOYER_ADDRESS",
                   "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM")

categoric <- NULL

target    <- "CASE_STATUS"
risk      <- NULL
ident     <- NULL
ignore    <- c("EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE", "NAIC_CODE", "PREVAILING_WAGE", "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE", "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE", "IMO_H.1B_DEPENDENT", "TNM_EMPLOYER_NAME", "TNM_JOB_TITLE", "TNM_SOC_CODE", "TNM_WORKSITE_STATE", "TNM_IMO_H.1B_DEPENDENT")
weights   <- NULL

#_______________________________________________________________________________________________________________________________
# Rattle timestamp: 2017-11-24 14:10:33 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# Build the train/validate/test datasets.

# nobs=49729 train=34810 validate=14919 test=0

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


# The following variable selections have been noted.

input     <- c("EMPLOYMENT_PERIOD", "TOTAL_WORKERS",
                   "PW_SOURCE_YEAR", "TNM_EMPLOYER_NAME",
                   "TNM_EMPLOYER_ADDRESS", "TNM_JOB_TITLE",
                   "TNM_SOC_CODE", "TNM_PREVAILING_WAGE",
                   "TNM_PW_UNIT_OF_PAY", "TNM_PW_WAGE_SOURCE",
                   "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_WORKSITE_STATE")

numeric   <- c("EMPLOYMENT_PERIOD", "TOTAL_WORKERS",
                   "PW_SOURCE_YEAR", "TNM_EMPLOYER_NAME",
                   "TNM_EMPLOYER_ADDRESS", "TNM_JOB_TITLE",
                   "TNM_SOC_CODE", "TNM_PREVAILING_WAGE",
                   "TNM_PW_UNIT_OF_PAY", "TNM_PW_WAGE_SOURCE",
                   "TNM_PW_SOURCE_OTHER",
                   "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_WORKSITE_STATE")

categoric <- NULL

target    <- "CASE_STATUS"
risk      <- NULL
ident     <- NULL
ignore    <- c("EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE", "NAIC_CODE", "PREVAILING_WAGE", "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE", "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE", "IMO_H.1B_DEPENDENT", "TNM_IMO_H.1B_DEPENDENT")
weights   <- NULL

#Latest Eigen Value ONe------------------------------------------------------------------------------------------------
# Rattle timestamp: 2017-11-24 15:55:47 x86_64-w64-mingw32 

# Action the user selections from the Data tab. 

# Build the train/validate/test datasets.

# nobs=49729 train=34810 validate=14919 test=0

set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


# The following variable selections have been noted.

input     <- c("TOTAL_WORKERS", "TNM_JOB_TITLE",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER")

numeric   <- c("TOTAL_WORKERS", "TNM_JOB_TITLE",
                   "TNM_PW_WAGE_SOURCE", "TNM_PW_SOURCE_OTHER")

categoric <- NULL

target    <- "CASE_STATUS"
risk      <- NULL
ident     <- NULL
ignore    <- c("EMPLOYMENT_PERIOD", "EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE", "NAIC_CODE", "PREVAILING_WAGE", "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE", "PW_SOURCE_YEAR", "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE", "IMO_H.1B_DEPENDENT", "TNM_EMPLOYER_NAME", "TNM_EMPLOYER_ADDRESS", "TNM_SOC_CODE", "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY", "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_WORKSITE_STATE", "TNM_IMO_H.1B_DEPENDENT")
weights   <- NULL

#Latest PV --------------------------------------------------------------------------------------------------
set.seed(seed)

nobs <- nrow(dataset)

train <- sample(nobs, 0.7*nobs)

nobs %>%
  seq_len() %>%
  setdiff(train) ->
  validate

test <- NULL


# The following variable selections have been noted.

input     <- c("TOTAL_WORKERS", "PW_SOURCE_YEAR",
                   "TNM_EMPLOYER_ADDRESS", "TNM_JOB_TITLE",
                   "TNM_SOC_CODE", "TNM_PW_WAGE_SOURCE",
                   "TNM_PW_SOURCE_OTHER", "TNM_WORKSITE_STATE")

numeric   <- c("TOTAL_WORKERS", "PW_SOURCE_YEAR",
                   "TNM_EMPLOYER_ADDRESS", "TNM_JOB_TITLE",
                   "TNM_SOC_CODE", "TNM_PW_WAGE_SOURCE",
                   "TNM_PW_SOURCE_OTHER", "TNM_WORKSITE_STATE")

categoric <- NULL

target    <- "CASE_STATUS"
risk      <- NULL
ident     <- NULL
ignore    <- c("EMPLOYMENT_PERIOD", "EMPLOYER_NAME", "EMPLOYER_ADDRESS", "JOB_TITLE", "SOC_CODE", "NAIC_CODE", "PREVAILING_WAGE", "PW_UNIT_OF_PAY", "PW_WAGE_SOURCE", "PW_SOURCE_OTHER", "WAGE_RATE_OF_PAY_FROM", "WORKSITE_STATE", "IMO_H.1B_DEPENDENT", "TNM_EMPLOYER_NAME", "TNM_PREVAILING_WAGE", "TNM_PW_UNIT_OF_PAY", "TNM_WAGE_RATE_OF_PAY_FROM", "TNM_IMO_H.1B_DEPENDENT")
weights   <- NULL
# Decision Tree 

# The 'rpart' package provides the 'rpart' function.

library(rpart, quietly=TRUE)

# Reset the random number seed to obtain the same results each time.

set.seed(seed)

# Build the Decision Tree model.
originalcp <- 0.0002
rpart <- rpart(CASE_STATUS ~ .,
                   data=dataset[train, c(input, target)],
                   method="class",
                   parms=list(split="information"),
                   control=rpart.control(maxdepth=30,
                                         cp=originalcp,
                                         usesurrogate=0, 
                                         maxsurrogate=0))
library(ROCR)
pr <- predict(rpart, newdata=dataset[validate, c(input, target)])[,2]
no.miss   <- na.omit(dataset[validate, c(input, target)]$CASE_STATUS)
miss.list <- attr(no.miss, "na.action")
attributes(no.miss) <- NULL

if (length(miss.list))
{
  pred <- prediction(pr[-miss.list], no.miss)
} else
{
  pred <- prediction(pr, no.miss)
}
au <- performance(pred, "auc")@y.values[[1]]

cpvalues <- data.frame(rpart$cptable)
getUpdatedCP <- function(cpvalues){
  cpvalues$sum <- cpvalues$xerror+cpvalues$xstd
  cp_updated <- c()
  j <- 1
  for(i in 1 : nrow(cpvalues)){
    if(cpvalues$xerror[i] <= min(cpvalues$sum)){
      cp_updated[j] <- cpvalues$CP[i]
      #print(cpvalues$CP[i])
      j <- j+1
    }
  }
  return(cp_updated)
}

print(paste0("CP = ",originalcp," Model 1, Tree Size = ",(cpvalues$nsplit[nrow(cpvalues)])+1, ", AUC= ",round(au,4)))
#trunc <- function(x, ..., prec = 0) base::trunc(x * 10^prec, ...) / 10^prec
j <- 1
for(i in getUpdatedCP(cpvalues)){
  j <- j+1
  set.seed(seed)
  cpVal <- as.numeric(substring(i,1,6))
  #print(i)
  
  # Build the Decision Tree model.
  
  rpart <- rpart(CASE_STATUS ~ .,
                 data=dataset[train, c(input, target)],
                 method="class",
                 parms=list(split="information"),
                 control=rpart.control(maxdepth=30,
                                       cp=cpVal,
                                       usesurrogate=0, 
                                       maxsurrogate=0)) 
  pr <- predict(rpart, newdata=dataset[validate, c(input, target)])[,2]
  no.miss   <- na.omit(dataset[validate, c(input, target)]$CASE_STATUS)
  miss.list <- attr(no.miss, "na.action")
  attributes(no.miss) <- NULL
  
  if (length(miss.list))
  {
    pred <- prediction(pr[-miss.list], no.miss)
  } else
  {
    pred <- prediction(pr, no.miss)
  }
  au <- performance(pred, "auc")@y.values[[1]]
  cpvalues <- data.frame(rpart$cptable)
  print(paste0("CP = ",cpVal, ", Model, ", j, ", Tree Size = ",(cpvalues$nsplit[nrow(cpvalues)])+1, ", AUC= ",round(au,4)))
  
  
  
}

