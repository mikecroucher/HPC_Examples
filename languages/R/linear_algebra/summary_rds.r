#Get summary a set of .rds files in a directory
#Get list of all .rds files
filenames = list.files(pattern="*\\.rds$")
#Load them all into a list of dataframes
data = lapply(filenames,readRDS)
#Collapse dataframes into one dataframe
data = do.call("rbind",data)
print(data)
print(summary(data))
