#  2.1. Use a função read_xlsx do pacote readxl para carregar os dados do PNUD;
if(require(readxl) == F) install.packages('readxl'); require(readxl)
setwd("C:/Users/André Brito/Downloads/Doutorado/Análise de Dados/dados_encontro_1_ufpe")

pnud <- read_excel("atlas2013_dadosbrutos_pt.xlsx", sheet = 2)
library(dplyr)
pnud_pe_2010 <- pnud %>% filter(ANO == 2010 & UF == 26)
rm(pnud)
idhm <- pnud_pe_2010 %>% select(4, 234) #criando um df com o codigo do mun. e o idhm
rm(pnud_pe_2010)

#  2.2. Não deve haver docente com mais de 70 anos ou com menos de 18 anos;
docentes_ne <- read.csv2("DOCENTES_NORDESTE.csv", sep = "|")
docentes_pe <- docentes_ne %>% filter(CO_UF == "26" & NU_IDADE <= 70 & NU_IDADE >= 18)
rm(docentes_ne)

#  2.3. Não deve haver aluno com mais de 25 anos ou com menos de 1 ano
if(require(ffbase ==F)) install.packages("ffbase", dependencies = TRUE); require(ffbase)
# matricula_ne <- read.csv2("MATRICULA_NORDESTE.csv", sep = "|")
matricula_ne <- read.csv2.ffdf(file = "MATRICULA_NORDESTE.csv", sep = "|", first.rows=80000)
matricula_pe <- subset(matricula_ne, CO_UF == "26")
rm(matricula_ne)
matricula_pe_f <- subset(matricula_pe, NU_IDADE <= 25 & NU_IDADE >= 1)
rm(matricula_pe)
matricula_pe <- as.data.frame(matricula_pe_f)
rm(matricula_pe_f)


#  2.4. Apresente estatísticas descritivas do número de alunos por docente nos municípios do Estado;

matricula_p.mun <- matricula_pe %>% group_by(CO_MUNICIPIO) %>% summarise(n_alunos = n())
rm(matricula_pe)
docentes_p.mun <- docentes_pe %>% group_by(CO_MUNICIPIO) %>% summarise(n_docentes = n())
rm(docentes_pe)
edu_mun <- docentes_p.mun %>% inner_join(matricula_p.mun, by = "CO_MUNICIPIO")
edu_mun <- edu_mun %>% mutate(MTR_DOC = (n_alunos / n_docentes) )  # criando a coluna alunos/profs.

mean(edu_mun$MTR_DOC)
median(edu_mun$MTR_DOC)
sd(edu_mun$MTR_DOC)
summary(edu_mun$MTR_DOC)

#  2.5. Apresente o município com maior número de alunos por docente e seu IDHM;
colnames(idhm)[1] <- "CO_MUNICIPIO"  # renomeando o cod. do municipio para unir os dfs.
base <- edu_mun %>% inner_join(idhm, by = "CO_MUNICIPIO") 
base <- base %>% arrange(desc(MTR_DOC))   # ordenando por alunos/profs.
base[1,1]  # linha 1: Município código 2615805 (Tupanatinga)
base[1,5]  # linha 1: IDHM 0.519 ()

#  2.6. Faça o teste do coeficiente de correlação linear de pearson e apresente sua resposta;
cor(base$MTR_DOC, base$IDHM)   # r-pearson = -0.5057435

#  2.7. Seu script deve salvar a base de dados criada para o cálculo em formato .RData;
save(base, file = "edu_idhm_pe")

# 3. Usando o pacote ggplot2, apresente o gráfico de dispersão entre as duas variáveis (número de alunos
# por docente e IDHM)
if(require(ggplot2) == F) install.packages('ggplot2'); require(ggplot2)
plot(base$MTR_DOC, base$IDHM, main = "Distribuição IDH-M e proporção Alunos \n por Professor nos Municípios \n Pernambucanos",
     xlab = "Alunos por professor",
     ylab = "IDH-M")