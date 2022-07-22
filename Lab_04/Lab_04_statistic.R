#### ESTATÍSTICA ####

#### LABORATÓRIO 04: Teste do Qui-Quadrado ####

#### 1. Working Directory ####
# Configurando o diretório de trabalho
setwd("C:/Users/Utilizador/repos/Formacao_cientista_de_dados/big_data_analytics_R_microsoft_azure_machine_learning/Modulo_11")
getwd()

#### 2. Imports ####

#### 3. Data Loading ####
df = read.csv("dados.csv")

# Visualizando os dados
View(df)

# Dimensões
dim(df)

#### 4. Feature Engenering ####
# Separando x e y
x = df$Tipo_Imovel
unique(x)

y = df$Status_Imovel
unique(y)

# Tabela cruzada
table(x, y)
prop.table(table(x, y))

#### 5. Hipoteses ####
# Definindo as hipóteses:

# H0 = Não há relação entre x e y
# H1 = x e y estão relacionados

#### 6. Teste Qui-Quadrado ####
# Teste do Qui-Quadrado
?chisq.test
chisq.test(table(x, y))

##### 6.1 Conclusion #####
# Se o valor-p for menor que 0.05 rejeitamos a H0
# REJEITAMOS H0

#### 7. Business Question ####
# Se não considerarmos os imóveis do tipo Apartamento, há diferença no resultado do teste?

# H0 = Não há relação entre x e y
# H1 = x e y estão relacionados

# Se o valor-p for menor que 0.05 rejeitamos a H0

dim(df)

# Extrai um subset filtrando os dados conforme condição proposta: Não inclui apartamentos
dados = droplevels(subset(df, Tipo_Imovel != "Apartamento"))
dim(dados)
View(dados)

# Separa as variáveis
x = dados$Tipo_Imovel
y = dados$Status_Imovel

# Tabela cruzada
table(x, y)

##### 7.1 Teste Qui-Quadrado #####
# Executa o teste
chisq.test(table(x, y))

##### 7.2 Conclusion #####
# p-value é igual a 0.8501, ou seja, maior que 0.05. Com isso aceitamos H0
# ACEITAMOS H0
