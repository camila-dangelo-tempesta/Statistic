#### ESTATÍSTICA ####

#### LABORATÓRIO 01: ANOVA ####

#### 1. Working Directory ####
# Configurando o diretório de trabalho
setwd("C:/Users/Utilizador/repos/Formacao_cientista_de_dados/big_data_analytics_R_microsoft_azure_machine_learning/Modulo_08")
getwd()

#### 2. Imports ####

#### 3. Data Loading ####
# Dados fornecidos:
# Medicamento A = 4 5 4 3 2 4 3 4 4
# Medicamento B = 6 8 4 5 4 6 5 8 6
# Medicamento C = 6 7 6 6 7 5 6 5 5

# A grande questão é se existe diferença entre os medicamentos?

# Lista com as respostas dos voluntários
nota_voluntario <- c(4,5,4,3,2,4,3,4,4,6,8,4,5,4,6,5,8,6,6,7,6,6,7,5,6,5,5)
nota_voluntario

# Lista com o total de testes dos 3 medicamentos
medicamento <- c(rep("A",9), rep("B",9), rep("c",9))
medicamento

# Agora criamos um dataframe
df <- data.frame(nota_voluntario, medicamento)
View(df)

hist(nota_voluntario)

#### Hipóteses ####
# H0 (Hipótese Nula) = A MÉDIA dos grupos é a mesma.
# Ha (Hipótese Alternativa) = A MÉDIA de todos os grupos não é a mesma.

#### ANOVA ####
# Aplicamos ANOVA
?aov
teste_anova <-  aov(nota_voluntario ~ medicamento, data = df)
teste_anova

# Sumário do teste
summary(teste_anova)

#### Conclusão ####
# Valor-p < 0.05, ou seja, 0.000256 < 0.05, logo, rejeitamos a H0. 
# As médias dos grupos não são as mesmas e consequentemente os medicamentos não tem o mesmo efeito.