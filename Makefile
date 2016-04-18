######################
#Jim Tyson
#Example makefile for R project
######################

######################
#Readn and clean data
#Create markdown doc with R statistics chunks
#Plot graphs
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

######################
#The target clean can be used to remove junk/clean up

clean:
	rm -fv *.Rout
