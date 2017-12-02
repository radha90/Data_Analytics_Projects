new_df <- read.csv('C:\\Users\\smart\\Documents\\PSU\\R Projects\\H1B\\2016_raw_data.csv',header = TRUE, stringsAsFactors = FALSE)
emp <- new_df[new_df$EMPLOYER_NAME=="INFOSYS LIMITED",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data1 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="CAPGEMINI AMERICA INC",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data2 <- filtered[1:1000,]


emp <- new_df[new_df$EMPLOYER_NAME=="TATA CONSULTANCY SERVICES LIMITED",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data3 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="WIPRO LIMITED",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data4 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="IBM INDIA PRIVATE LIMITED",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data5 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="ACCENTURE LLP",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data6 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="DELOITTE CONSULTING LLP",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data7 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="TECH MAHINDRA (AMERICAS),INC.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data8 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="COGNIZANT TECHNOLOGY SOLUTIONS U.S. CORPORATION",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data9 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="MICROSOFT CORPORATION",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data10 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="HCL AMERICA, INC.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data11 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="GOOGLE INC.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data12 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="ERNST & YOUNG U.S. LLP",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data13 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="IBM CORPORATION",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data14 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="AMAZON CORPORATE LLC",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data15 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="LARSEN & TOUBRO INFOTECH LIMITED",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data16 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="IGATE TECHNOLOGIES INC.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data17 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="UST GLOBAL INC",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data18 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="SYNTEL CONSULTING INC.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data19 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="L&T TECHNOLOGY SERVICES LIMITED",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data20 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="APPLE INC.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data21 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="INTEL CORPORATION",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data22 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="HEXAWARE TECHNOLOGIES, INC.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data23 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="JPMORGAN CHASE & CO.",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data24 <- filtered[1:1000,]

emp <- new_df[new_df$EMPLOYER_NAME=="DELOITTE & TOUCHE LLP",]
filtered <- emp[emp$CASE_STATUS %in% c("CERTIFIED","DENIED"),]
data25 <- filtered[1:1000,]
data_final <- rbind(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,
                    data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,data24,data25)
data_final2 <- data_final[,c("CASE_NUMBER","CASE_STATUS","EMPLOYER_NAME","SOC_NAME","SOC_CODE","JOB_TITLE",
                             "FULL_TIME_POSITION","PREVAILING_WAGE","PW_UNIT_OF_PAY","WORKSITE_CITY","WORKSITE_STATE",
                             "AGENT_ATTORNEY_NAME","EMPLOYMENT_START_DATE","EMPLOYMENT_END_DATE","NAIC_CODE","TOTAL_WORKERS","WAGE_RATE_OF_PAY_FROM",
                             "WAGE_RATE_OF_PAY_TO","WAGE_UNIT_OF_PAY","H.1B_DEPENDENT","WILLFUL_VIOLATOR")]
d <- data_final[!(data_final$CASE_STATUS %in% c("CERTIFIED-WITHDRAWN")),]
write.csv(d,'C:\\Users\\smart\\Documents\\PSU\\R Projects\\H1B\\filteredH1BData_final.csv',col.names = TRUE,row.names = FALSE, na="NA")

# clean data from Rattle
f <- read.csv('C:\\Users\\smart\\Documents\\PSU\\DAAN 881\\ProjectDAAN881\\H1BData_AfterDataPrep.csv',header = TRUE, stringsAsFactors = FALSE)


missing_h1_dep <- f[is.na(f$H.1B_DEPENDENT),]
nrow(f[f$CASE_STATUS == "CERTIFIED",])
nrow(f[f$CASE_STATUS == "DENIED",])
certified <- f[f$CASE_STATUS=="CERTIFIED",]
nrow(certified[certified$H.1B_DEPENDENT == "Y",])
nrow(certified[certified$H.1B_DEPENDENT == "N",])
nrow(certified[certified$H.1B_DEPENDENT == "NA",])

f <- f[!(f$EMPLOYMENT_PERIOD== -1391),]
write.csv(f,'C:\\Users\\smart\\Documents\\PSU\\DAAN 881\\ProjectDAAN881\\filteredH1BData_16Attributes.csv',append=TRUE)

denied <- f[f$CASE_STATUS == "DENIED",]
nrow(denied)
repeated <- denied[rep(1:nrow(denied),times=219),]
f <- rbind(f,repeated)
nrow(f[f$CASE_STATUS == "CERTIFIED",])
nrow(f[f$CASE_STATUS == "DENIED",])
write.csv(f,'C:\\Users\\smart\\Documents\\PSU\\DAAN 881\\ProjectDAAN881\\H1BData_AfterDataPrep_Oversampled.csv',append=TRUE)
