# Aula 01 - Introdução ao R
# 
# -----------------------------------------------------

# Comentários em R começam com "#"
# Você pode usar o console (embaixo) para rodar linhas soltas
# ou salvar seus códigos em arquivos .R (como este).


# Operações matemáticas básicas
2 + 2
5 * 3
10 / 2
2^3

# "Criando" objetos 
x <- 5
y <- 10

#Realize operações de soma, multiplicação, divisão e potenciação com as duas variáveis:

# Vetores
## São objetos com mais de um valor armazenado
idades <- c(21, 23, 20, 22, 24, 18, 21, 26, 22, 21, 20, 28)
peso <-   c(21, 23, 20, 22, 24, 18, 21, 26, 22, 21, 20, 28)
plot(idade, peso)
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
stripchart(idades, method = "stack") #Grafico de pontos empilhados
plot(idades, peso) 


# O conceito de 'working directory
## É onde vai ser a sua área de trabalho, fisicamente, no seu computador
## Enão você pode ir para o painel superior, no rstudio e seguir os passos
## "Session" -> "Set Working Directory" -> "To source file location"
## Assim, agora os arquivos que você for abrir, ou salvar, estarão no mesmo lugar

# Data frame
## Estrutura do R mais comumente utilizada, seria o formato de tabela, onde temos colunas e linhas
## Antes de compreender e realizar manipulação de uma tabela, primeiro vamos entender um conjunto

# Trabalhando com dados (iremos explorar mais na Aula 2)
dados <- read.csv("https://raw.githubusercontent.com/VitorZe/Introducao-R-PAE-BioestatisticaNutricao/refs/heads/main/dados/dieta.csv")
#head() vai trazer as 5 primeiras observações
head(dados)
#View() vai trazer a visualização em formato de tabela
View(dados)


# Selecionar Coluna

# Selecionar linha

# Selecionar observação (Coluna x Linha)

#Operações
## Generalizadas
###

## Singulares
###

## Condicionais
###

