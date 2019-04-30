#Lista_3_Exercícios_4_5

getwd()

setwd("C:/Users/André Brito/Downloads/Doutorado/R/dados_encontro_1_ufpe")

#Exercício_4

turmas<-read.csv2("TURMAS.csv",sep="|")

names(turmas)

head(turmas)

dim(turmas)
# 2430211      88

turmas_pe <- subset(turmas, turmas$CO_UF == "26")

dim(turmas_pe)
# 2430211      88

#Exercício 5

install.packages("ffbase", dependencies = TRUE)

require(ffbase)

getwd()

setwd("C:/Users/André Brito/Downloads/Doutorado/R/dados_encontro_1_ufpe")

load("turmas_pe.RData")

names(turmas_pe)
   
head(turmas_pe, n=10)

mean(turmas_pe$NU_MATRICULAS)
#Respsota: [1] 23.07089

#Exercício 6

getwd()

setwd('..')

getwd()

docentes_ne <- read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv", sep = "|",
                              first.rows=100000)

setwd("./dados_encontro_1_ufpe/")

getwd()

setwd('..')

save.ffdf(docentes_ne, dir = "./docentes_ne", overwrite = TRUE)

dim(docentes_ne)

load.ffdf(dir="./docentes_ne")

docentes_pe <- subset(docentes_ne, CO_UF == 26)

dim(docentes_pe)
head(docentes_pe)

docentes_pe <- as.data.frame(docentes_pe)

 setwd('..')

getwd()
setwd("C:/Users/André Brito/Downloads/Doutorado/R/dados_encontro_2_ufpe")

save(docentes_pe, file = "docentes_pe_censo_escolar_2016.RData")

install.packages("tidyverse")
library(tidyverse)
install.packages("magrittr")
library(magrittr)

names(docentes_pe)

view(docentes_pe)
dim(docentes_pe)

class("TP_COR_RACA")
setDT( docentes_pe )[ , 100 * .N / nrow( docentes_pe ), by = TP_COR_RACA ]


setwd("C:/Users/André Brito/Downloads/Doutorado/R/dados_encontro_2_ufpe")

names(docentes_pe)
mean(docentes_pe$TP_COR_RACA)

attach(docentes_pe)

mytable <- (docentes_pe$TP_COR_RACA)
mytable
# [1] 3 3 3 3 3 3 3 3 1 1 3 1 3 3 3 1 1 3 1 1 1 1 1 1 1 1 1 1 1 3 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1
[63] 1 0 0 0 1 1 0 1 1 1 1 1 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 3 3 3 0 0 2 2 2 0 0 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
[125] 3 0 3 3 3 0 0 0 0 0 1 0 0 0 0 0 0 3 3 3 3 3 3 3 3 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 1 1 0 0 1 3 3 3 3 3 3 3 3 3 3
[187] 3 3 0 0 0 2 2 2 2 2 2 3 3 3 3 0 3 3 3 3 3 3 1 1 1 0 3 3 3 0 0 0 3 1 1 4 4 4 3 4 4 3 3 3 3 3 3 3 3 3 0 0 0 3 0 0 0 3 0 0 0 0
[249] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 0 0 0 3 3 3 3 3 3 3 3 3 0 0 0 0 3 3 0 1 3 3 0 0 0 0 0 0 3 3 3 0 0 3 3 3 0 1 1
[311] 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 1 1 1 1 1 2 3 3 3 3 3 3 2 2 2 2 2 0 0 3 1 1 3 3 3 0 0 0 0 0 0 0 3 3 3 3 3 3 3 0 3 3 3 3 3 0
[373] 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 3 3 3 0 0 0 0 0 0 0 0 0 0 0 3 3 3 3
[435] 3 3 3 3 3 3 3 3 0 0 0 0 0 0 0 0 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 0 0 0 3 0 0 0 1 3 3 3 3 3 3 3 3 1 1 1 1 1 0 0 1 1 1 0 0 3 1 0
[497] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0
[559] 0 3 3 3 3 3 3 3 3 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 3 3 3 0 0 0 0 0 0 0 0 3 3 3 3 3 3 3 3 0 0 0 0 0 0 0 0
[621] 0 0 0 0 0 0 3 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 1 1 1 1 1 3 3 3 3 3 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1
[683] 3 3 3 3 3 0 0 0 0 0 0 0 0 0 0 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 0 3 3 3 0 0 0 0 0 0 0 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 1 1 1
[745] 3 3 1 3 1 0 3 1 3 3 3 0 3 3 3 3 3 0 0 0 0 0 0 0 0 0 0 3 3 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
[807] 1 1 1 1 1 1 1 0 0 0 0 3 3 3 1 1 1 0 1 1 3 0 3 3 3 3 3 0 0 3 0 3 3 3 3 0 0 0 0 1 3 3 1 1 1 1 1 1 1 1 1 1 3 3 3 1 3 3 3 0 1 1
[869] 1 1 1 1 1 1 1 1 1 1 3 0 1 1 1 1 1 1 0 3 0 1 1 0 0 0 1 1 1 2 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1
[931] 1 1 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1
[993] 3 1 1 1 1 1 1 1
[ reached getOption("max.print") -- omitted 411663 entries ]


