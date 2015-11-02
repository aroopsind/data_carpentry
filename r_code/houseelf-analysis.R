#Analyses of house-elves with Dr. Granger

#import data: reads in data collected on magical house elves (doby death was most upsetting )
<<<<<<< HEAD
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
      return(gc_content)
      
}

#print out gc content of dna sequences observed
dna_content <- read_gc_content(house_elves_1$dnaseq)
print(dna_content)

======= #CODE ADDED BY DOC GRANGER
# house_elves_1 <- read.csv("data/houseelf_earlength_dna_data_1.csv",header=TRUE) #data already read into r

get_size_class <- function(seq){
   #classifies ear as small when ear length < 10, large otherwise
   ear_lengths <- ifelse(seq > 10, "large", "small")
   return(ear_lengths)
}

ear_lengths <- get_size_class(house_elves_1$earlength)
print(ear_lengths)

>>>>>>> cab2e6ea9f218ad930a80f08b6b8159cf1f99209
======= # END CODE ADDED BY DOC

#creates dataframe with information about individual ID, ear length class and gc content
ID <- house_elves_1$id #storing elve ID as vector
print(ID)

#combine ID with outputs from dna sequence and ear classification functions
house_elves_magic <- data.frame(ID,dna_content,ear_lengths)
print(house_elves_magic)

#write as csv file
write.csv(house_elves_magic, "outputs/granger_elve_analysis.csv")


