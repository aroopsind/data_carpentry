#Analyses of house-elves with Dr. Granger

#import data: reads in data collected on magical house elves (doby death was most upsetting )
house_elves_1 <- read.csv("data/houseelf_earlength_dna_data.csv",header=TRUE) 

#function to calculate the GC-content of a sequence, regardless of the capitalization of that sequence.

library("stringr")

read_gc_content <- function (data) {
if (sum(str_count(data, 'G')) | sum(str_count(data,'C')) > 0) {
      gsdata <- str_to_lower(data)
      } else {
      gsdata <- data
      }
      Gs <- str_count(gsdata, 'g')
      Cs <- str_count(gsdata, 'c')
      gc_content <- (Gs + Cs) / str_length(data) * 100
      
}

#print out gc content of dna sequences observed
print(read_gc_content(house_elves_1$dnaseq))
