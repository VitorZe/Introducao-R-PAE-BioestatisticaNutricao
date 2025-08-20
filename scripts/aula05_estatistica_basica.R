# Aula 05 - Estatística básica
# Curso: Introdução ao R para Nutrição e Metabolismo (USP)
# -----------------------------------------------------

dados <- read.csv("dados/dieta.csv")
dados$imc <- dados$peso / (dados$altura^2)

# Média e desvio padrão do IMC
mean(dados$imc)
sd(dados$imc)

# Comparar médias de IMC entre sexos (teste t)
t.test(imc ~ sexo, data = dados)

# Teste qui-quadrado - exemplo com tabela sexo x categoria IMC
dados$categoria_imc <- ifelse(dados$imc < 25, "Normal", "Sobrepeso/Obesidade")
table(dados$sexo, dados$categoria_imc)
chisq.test(table(dados$sexo, dados$categoria_imc))
