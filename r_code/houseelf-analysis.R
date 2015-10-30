#Analyses of house-elves with Dr. Granger

#import data: reads in data collected on magical house elves (doby death was most upsetting )
house_elves_1 <- read.csv("data/houseelf_earlength_dna_data_1.csv",header=TRUE) 

get_size_class <- function(seq){
   #Calculate the GC-content for one or more sequences
   ear_lengths <- ifelse(seq > 10, "large", "small")
   return(ear_lengths)
}
