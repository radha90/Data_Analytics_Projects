DECISION-MAKING PROBLEM

The H-1B is an employment-based, non-immigrant visa category for temporary foreign workers in the United States. For a foreign national to apply for H1-B visa, an US employer must offer a job and petition for H-1B visa with the US immigration department. This is the most common visa status applied for and held by skilled works and international students to work in a full-time position.
The Office of Foreign Labor Certification (OFLC) generates program data that is useful information about the immigration programs including the H1-B visa. The disclosure data updated annually is available at this link.

The objective of this project was to come up with a model that will help the applicants determine if they are eligible to get an H1B visa, based on various characteristics in the available data.

 The Decision Tree classifier designed in this project could be utilized by both, H-1B aspirants and employers,  to  gauge  the  likelihood  of  visa  certification, before filing the petition.


# H1B_Data_Filtering.R
This script contains the data processing done on the raw data. Here is the data source https://www.foreignlaborcert.doleta.gov/performancedata.cfm). 

#PCA.R
This script contains the Principle Component Analysis implementation that filters the significant attributes out of the original input data.

#DT.R
Script for implementation of decision tree algorithm.
