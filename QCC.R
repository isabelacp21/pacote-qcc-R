# Pacote qcc: Quality Control Charts and Statistical Process Control

install.packages("qcc")
library(qcc)


###########
#fábica de anéis de pistão 
#fase 1: 25 amostras com 5 unidades cada p medir o diâmetro
#fase 2: 15 amostras com 5 unidades cada p medir o diâmetro


# o pacote qcc possui vários datasets
data("pistonrings")

# o comando attach joga o conjunto de dados na frente dos outros
attach(pistonrings)

# o ponto de interrogação é pra chamar o help:
?pistonrings


# boxplot das medidas dos diâmetros nas duas amostras 
boxplot(diameter ~ trial)


# ajustando a tabela para construção do gráfico XR
diametro <- qcc.groups(diameter, sample)
  

# gerando gráfico com dados da fase1 com 25 primeiras e acrescentando dados da fase2 com 15 amostras
grafico_1 <- qcc(diametro[1:25,], type = "xbar", newdata = diametro[26:40,])


library(qcc)
data("orangejuice")
attach(orangejuice)
?orangejuice

boxplot(D ~ trial)

#constroi o gráfico P (como varia a porcentagem de itens defeituosos ao longo do tempo)
#onde Trial = TRUE, ou seja, as primeiras 30 amostras
qcc(D[trial], sizes = size[trial], type = "p")


