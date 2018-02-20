require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output = args[2]

GRSet <- get(load(input))

annotation <- getAnnotation(GRSet)

write.table(annotation, output)
