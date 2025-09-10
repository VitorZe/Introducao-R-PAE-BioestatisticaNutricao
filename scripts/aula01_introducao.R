# Aula 01 - Introdução ao R
# 
# -----------------------------------------------------

# Comentários em R começam com "#"
# Você pode usar o console (embaixo) para rodar linhas soltas
# ou salvar seus códigos em arquivos .R (como este).
# Geral: Nao precisa decorar nada, só lembrar que da pra fazer

#O que da pra fazer?
##  Operações matemáticas básicas
2 + 2
5 * 3
10 / 2
2^3



log(2)

##  "Criando" objetos/variáveis
peso <- 50 
altura <- 1.60

#EXERCÍCIO: compute o IMC:
peso/altura^2

##EXTRA, saída mais bonitinha: função cat(), concatena objetos, nesse caso, textos e variáveis
cat("IMC: ", peso*altura^2, "kg/m²")
# Vetores
## São objetos com mais de um valor armazenado
idades <- c(21, 23, 20, 22, 24, 18, 21, 26, 22.1, 21.2, 20, 28, 27, 23,
            21, 24, 21, 21, 23, 19, 21.2, 25.6, 18.1, 18.3, 19, 20, 17, 24)


plot(idades)
## Missings
### Descreve missings
##
# Funções
mean(idades)  
#Erro

##Argumentos na.rm

## Na documentação, ou na barra de pesquisa, é possivel buscar uma função e ler os argumentos
##Realize operações com o vetor 'idades'


# Funções básicas
mean(idades)     # média
median(idades)   # mediana
sd(idades)       # desvio-padrão
sum(idades)      # somatório

## Crie um vetor, de alguma variável (numérica) que faça parte do seu cotidiano, com 5 ou mais observações


## Descreva esse com as funções básicas


##A média e a mediana foram próximas? se sim, ou se não, você acredita que isso aconteceu por qual razão?



# Visualizações
hist(idades) #Histograma
stripchart(idades) #Grafico de pontos
stripchart(log(idades), method = "stack") #Grafico de pontos empilhados
stripchart(exp(idades), method = "stack") #Grafico de pontos empilhados
stripchart(idades, method = "stack") #Grafico de pontos empilhados


# O conceito de 'working directory
## É onde vai ser a sua área de trabalho, fisicamente, no seu computador
## Enão você pode ir para o painel superior, no rstudio e seguir os passos
## "Session" -> "Set Working Directory" -> "To source file location"
## Assim, agora os arquivos que você for abrir, ou salvar, estarão no mesmo lugar



# Trabalhando com dados (iremos explorar mais na Aula 2)
dados <- read.csv("https://raw.githubusercontent.com/VitorZe/Introducao-R-PAE-BioestatisticaNutricao/refs/heads/main/dados/dadosNutri.csv")
setwd("/Caminho/daSua/Pasta")
dados <- read.csv("")

#head() vai trazer as 5 primeiras observações
head(dados)
#View() vai trazer a visualização em formato de tabela
View(dados)

hist(dados$peso)
hist(dados$altura)
summary(dados$peso)
summary(dados$altura)


boxplot(dados$altura, 
        horizontal = TRUE,
        main = "distribuição das alturas")
##Ajustar
## Aqui vemos como selecionar, usamos os "[]"
dados$altura[dados$altura == 18.95]

dados$altura[dados$altura == 18.95] <- 1.895
dados[dados$altura == 18.95, ]

#Busque o outro outlier e corrija
plot(dados$peso, dados$altura)
#
# boxplot(x, grupo)
## 

# Selecionar Coluna

# Selecionar linha

# Selecionar observação (Coluna x Linha)

# Seleção condicional df[df[, a] == "x",]
#Operações
## Generalizadas
###

## Singulares
###

## Condicionais
###

