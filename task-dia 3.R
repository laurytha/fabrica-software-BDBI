#ctrl = enter
1+1
x = c(3, 4, 5, 7)
m = matrix(c(1,2,3,4,5,6),3,2, byrow=TRUE)
m[2,1]
m = matrix(c(1,2,3,4,5,6), 3, 2, byrow=TRUE)

df = data.frame(nome = c('Joana', 'Marta', 'F??lix', 'Jo??o', 'Ana'), 
                sexo = c('F', 'F', 'M', 'M', 'F'),
                filhos = c(0, 1, 1, 0, 2),
                notas = c(5.7, 8.8, 9, 6, 10))
df$nome
df$filhos
df[,1]
df[1,]
df[2,4]

lista = list(num= 1,
             vetor = x,
             matrix = m,
             dataframe = df)
##grafico
table(df$sexo)
pie(table(df$sexo))

tabela = table (df$filhos)
barplot(tabela)

plot(df$filhos)
plot(df$filhos, df$notas)
plot(iris)
plot(df[,-1])

#entrada de arquivos

df = read.csv('C:\\Users\\laury\\Downloads\\workshop\\Dados\\teste.csv')

head(df, 10)
tail(df, 10)

df2 = read.table('C:\\Users\\laury\\Downloads\\workshop\\Dados\\Notas.txt', header = T)
head(df2, 10)
tail(df2, 10)

install.packages('readxl')
library(readxl)

install.packages('janitor')
library(janitor)

milho = read_excel('C:\\Users\\laury\\Downloads\\workshop\\Dados\\milho_br.xlsx', sheet=3, skip=4)
colnames(milho) = c('Nivel', 'Codigo', 'Municipio', 'Total', 'Unidade')

milho = clean_names(milho)

milho$total

install.packages('tidyverse')
library(tidyverse)
tb1 = tibble(a = c('a', 'g', 'd'), 
             b = 1:3, 
             c = c(3.3, 3.4, 3.0), 
             funcoes=c(mean, max, sd))

install.packages("ggplot2")
rtcars
