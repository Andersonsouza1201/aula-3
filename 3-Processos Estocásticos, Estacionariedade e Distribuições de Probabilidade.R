          #3-Processos Estoc�sticos, Estacionariedade e Distribui��es de Probabilidade

rm(list = ls())          #Removendo todos objetos do ambiente
getwd()                  #Verificando o diret�rio atual
setwd("c:/Econometria")  # Aleterando o diret�rio caso seja necess�rio, para ("c:/EconometriaA") ou "c:/Econometria")
library("readr")                               #Carrega o pacote de leitura de arquivos .csv
br <- read.csv("c:/EconometriaA/br.csv")       #L� o arquivo br.csv de acordo com o caminho especificado
view(br)                                       #Exibe o objeto "br", criado a partir do arquivo "br.csv"
br <- br[,-1]                                  #Apaga a primeira coluna
colnames(br)[3] <- "Cambio"                    #Renomeia a terceira coluna do objteo "br" para Cambio

PIB <- ts(br$PIB, start = 1950, frequency = 1)   #Cria uma s�rie temporal somente com dados do PIB
plot(PIB)                                        #Cria gr�fico do PIB
hist(PIB)                                        #cria um histograma (gr�fico em barras com a frequencia no eixo Y e os valores assumidos pela vari�vel no eixo x)

Trabalho <- ts(br$Trabalho, start = 1950, frequency = 1)    #Cria uma s�rie temporal somente com dados do Trabalho
plot(Trabalho)                                              #Cria gr�fico do Trabalho
hist(Trabalho)                                              #Cria histograma do Trabalho

Cambio <- ts(br$Cambio, start = 1950, frequency = 1)    #Cria uma s�rie temporal somente com dados do Cambio
plot(Cambio)                                            #Cria gr�fico do Cambio
hist(Cambio)                                            #Cria histograma do Cambio

# Comandos Extras

#rnorm (n, media, desvio padr�o) : gera n valores distribuidos normalmente de acordo com m�dia e desvio padr�o atriobui��o no comando.
#Exemplo: rnorm(100,50,2): gera 100 valores com distribui��o normal, cuja m�dia dos valores � 50 e desvio padr�o � 2.
#runif (n, min, max): gera n valores distribuidos uniformemente com valor m�nimo e m�ximos atriobuidos no comando.
#Exemplo:runif(1000,4000,5000): gera 1000 valores entre 4000 e 5000 com distribui��o uniforme
#round (x, digits=n) : arredonda o valor x para n digitos depois do zero.
