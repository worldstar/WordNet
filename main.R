library("wordnet")
library("stringr")

if(initDict())
  synonyms("tuna", "NOUN") #Start to test

checkWords <- function(dataSetName, myWord){
  if(!initDict()) return(null)
  
  wordBags = synonyms(dataSetName, "NOUN")
  isEqual = FALSE
  
  for(i in wordBags){
    if(i == myWord){
      isEqual = TRUE
      break
    }
  }
  
  return(isEqual)
}

isEqual = checkWords("carcarcarcarcarcar", "automobile")
isEqual


library(XML)
x <- xmlParse("000001.xml")
xmlfiles <- xmlRoot(x)
y <- xmlToDataFrame(xmlfiles["object"]) 
y$name

library(jsonlite)
y <- fromJSON("jsonTest.json", flatten = TRUE)
y$description

df <- read.table("JSONResults-Caltech101.json", header = FALSE, sep ="\n")
class(df)
head(df)
df[1]
# y <- fromJSON(df[1], flatten = TRUE)

df <- write.table(df, "JSONT2.json", sep ="\n")



