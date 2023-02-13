#import csv file 

df <-read.csv("~/Desktop/Exercise_Files/02_02/exploratory-r.csv")
df
#look the data 
head(df)

#shift the names to each row
row.names(df)<-df$keyword

#review the data transformation 
df

# transform the data into a matrix 
dfmatrix<- data.matrix(df)

# look the matrix 
dfmatrix 

#generate a hitmap
heatmap(dfmatrix, Rowv=NA, Colv=NA, scale="column")
