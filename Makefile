######################
#Jim Tyson
#Example makefile for R project
######################

######################
#Create markdown doc
#Do statistics
#Plot graph
#Render markdown

literater.pdf: cleandata.csv avg.png
	Rscript -e 'rmarkdown::render("literater.Rmd")'

######################
#Reading and preparing your data

cleandata.csv:
	R CMD BATCH readandclean.R
	
######################
#Make graphs to be included
avg.png:
	R CMD BATCH graphs.R

