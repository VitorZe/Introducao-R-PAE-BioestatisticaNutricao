# Aula 04 - Visualização de dados (Base R)
# Curso: Introdução ao R para Nutrição e Metabolismo (USP)
# -----------------------------------------------------

dados <- read.csv("dados/dieta.csv")
dados$imc <- dados$peso / (dados$altura^2)

# Histograma da ingestão de energia
hist(dados$energia_kcal,
     main = "Histograma - Ingestão de energia",
     xlab = "Energia (kcal)")

# Boxplot de IMC por sexo
boxplot(imc ~ sexo, data = dados,
        main = "IMC por sexo",
        ylab = "IMC")

# Gráfico de dispersão - Altura x Peso
plot(dados$altura, dados$peso,
     main = "Altura x Peso",
     xlab = "Altura (m)", ylab = "Peso (kg)")
