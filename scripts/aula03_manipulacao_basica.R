# Aula 03 - Manipulação básica de dados
# Curso: Introdução ao R para Nutrição e Metabolismo (USP)
# -----------------------------------------------------

dados <- read.csv("dados/dieta.csv")

# Selecionar coluna
dados$peso

# Criar nova variável (IMC)
dados$imc <- dados$peso / (dados$altura^2)

# Filtrar linhas (apenas mulheres)
mulheres <- dados[dados$sexo == "F", ]

# Estatísticas básicas por sexo
mean(dados$imc[dados$sexo == "F"])
mean(dados$imc[dados$sexo == "M"])
