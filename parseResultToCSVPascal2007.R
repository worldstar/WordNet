parseResultToCSV <- function(i, outputFileName){
  array2 = strsplit(i, ",")
  # print(length(array2))
  if(length(array2) > 0){
    print(array2[[1]])
    type = strsplit(array2[[1]][1], "\"")[[1]][1]
    figureName = strsplit(array2[[1]][2], "\"")[[1]][4]
    mid = strsplit(array2[[1]][3], "\"")[[1]][4]
    description = strsplit(array2[[1]][4], "\"")[[1]][4]
    result = paste(type, figureName, mid, description, sep = ",")
    print(result)
    
    write.table(result, file = outputFileName , append = TRUE, col.names = "")
  }
}

sourceFileName <- "JSONResults-PASCAL2007.json"
strSplit = "\"DataSet\":\"PASCAL2007"
outputFileName = "PASCAL2007Results.txt"
conn <- file(sourceFileName,open="r")
linn <-readLines(conn)
array1 = strsplit(linn, strSplit)


lapply(array1[1:50000], parseResultToCSV, outputFileName = outputFileName)