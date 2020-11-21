# SAS Example: Predicting Sales Using Historical Advertising Data
This project was was completed using the free [SAS University Edition](https://www.sas.com/en_us/software/university-edition.html) and was originally an assignment completed for the class MIS543 - Enterprise Performance Management as part of my coursework for the Masters in Data Analytics program at [CSU-Global](https://csuglobal.edu/graduate/masters-degrees/data-analytics).

## Project Overview

The example uses data for sales of a single product which was advertised using different mediums over the period of twenty months. The goal was to predict which advertising method: point of sale, radio, television, or newspaper, had the greatest correlation with increased sales. 

### STEP 1: IMPORT & EXPLORE DATA

The data for this exercise was provided as a Microsoft Excel file, see [ad-sales.xlsx](ad-sales.xlsx) and was imported into SAS using the PROC IMPORT statement. 

```
PROC IMPORT datafile="/folders/myfolders/sasuser.v94/MIS543/M4/ad-sales.xlsx"
	dbms=xlsx
	out=MIS543.M4_PRODUCTSALESADVERTISING
	replace;
	getnames=yes;
RUN;
```

The SAS table created from the spreadsheet include the following columns: OBS (observation); SALES (number of sales); RADIO (amount spent of radio advertising); PAPER (amount spent on newspaper advertising); TV (amount spent on television advertising); and POS (amount spend on point of sale advertising). 

![datatable](/Users/janicegordon/Documents/github-repos/SAS-Advertising-Sales-Predictions/images/datatable.png)

Next, summary statistics were created using PROC MEANS.

```
PROC MEANS; 
    VAR sales radio paper TV POS;
RUN;
```



### STEP 2: IDENTIFY CORRELATIONS 

### STEP 3: PERFROM MULTIPLE REGRESSION

### STEP 4: CREATE A LINEAR REGRESSION MODEL 



## Results

First, descriptive statistics and plots were produced to understand the characteristics of each variable within the dataset. Second, correlation analysis was performed to identify the direction and strength of the linear relationships between each type of advertising medium and sales. Third, regression analysis was performed for the variables with had linear relationships with sales. Finally a regression equation was constructed from the model results which could be used to predict future sales based on different independent variable values.

