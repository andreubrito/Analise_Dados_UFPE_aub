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

matricula_ne<-read.csv2.ffdf(file="MATRICULA_NORDESTE.csv",sep="|",first.rows=100000)

save.ffdf(matricula_ne, dir = "dados_encontro_1_ufpe/matricula_ne", overwrite = TRUE)
#Error in open.ff(x) : unable to open

matricula_pe <- subset(matricula_ne, CO_UF == 26)

getwd()

setwd('..')

getwd()

setwd("C:/Users/André Brito/Downloads/Doutorado/R/dados_encontro_1_ufpe/matricula_ne")

matricula_pe <- subset(matricula_ne, CO_UF == 26)

dim(matricula_pe)

rm(list = ls()
   
#Não consegui devido ao erro: "#Error in open.ff(x) : unable to open"
   
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

load.ffdf(dir="./docentes_pe")

dim(docentes_pe)

head(docentes_pe)


