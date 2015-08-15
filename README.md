{\rtf1\ansi\ansicpg1252\cocoartf1344\cocoasubrtf720
\cocoascreenfonts1{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 # pollutantmean \
\'97\'97completed as apart of Coursera R Programming course assignment 1 part 1\
The repository contains 332 comma-separated-value (CSV) files containing pollution monitoring data for fine \
particulate matter (PM) air pollution at 332 locations in the United States. Each file contains data from a \
single monitor and the ID number for each monitor is contained in the file name. For example, data for monitor 200 \
is contained in the file "200.csv". Each file contains three variables:\
\
*Date: the date of the observation in YYYY-MM-DD format (year-month-day)\
*sulfate: the level of sulfate PM in the air on that date (measured in micrograms per cubic meter)\
*nitrate: the level of nitrate PM in the air on that date (measured in micrograms per cubic meter)\
\
In each file there are many days where either sulfate or nitrate (or both) are missing (coded as NA). \
This is common with air pollution monitoring data in the United States.\
\
There are three R files of interest: pollutantmean.R, corr.R, and complete.R.\
##pollutantmean \
is function that takes three arguments: directory, pollutant, and id.\
the directory is a string with the location of the .csv monitor files\
hint: put all .csv files in same folder with .R files then, set directory=getwd() \
the pollutant is either "sulfate" or "nitrate". the default value is "sulfate"\
the station id is a vector of numbers from 1 to 332. the default is 1:332\
the function returns the mean for each pollutant over all of the stations\
\
##complete\
 is a function that takes two arguments: directory and id\
the id is a vector of interger value that refers to the monitoring station\
\
##corr \
is a function that takes two arguments: directory and threshold\
threshold is an interger value, equal to the minimum number of data rows recorded at each monitoring station\
the function returns a vector with the number of complete data sets (no NAs) for "sulfate" and "nitrate" measurements\
In order for corr.R calls the function contained in complete.R therefore type following code in R to run without error:\
source(complete.R)\
source(corr.R)}
