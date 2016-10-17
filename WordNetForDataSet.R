library(wordnet)
setDict("C:/Program Files (x86)/WordNet/2.1/dict")
Sys.setenv(WNHOME = "C:/Program Files (x86)/WordNet/2.1") 
library("stringr")

allFolders <- list.dirs(".")
allFolders <- gsub("./", "", allFolders)
allFolders <- gsub("_", " ", allFolders)

for(i in 2:103){
  print(allFolders[i])
  result <- synonyms(allFolders[i], "NOUN")
  #print(result)
  allFolders[i] <- gsub(" ", "_", allFolders[i])
  write(result, file = paste(allFolders[i], ".txt", sep=""), sep = "\n")
}

#Reference:
#http://stackoverflow.com/questions/8868777/trouble-loading-wordnet-package-in-r/13314169