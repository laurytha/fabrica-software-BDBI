"mtcars"

dados = mtcars

rownames(dados)
colnames(dados)
names(dados)

#dados = data.frame (mtcars)

subset(dados, dados$cyl >= 6, select = c("mpg", "cyl", "gear"))

tabelaa = subset(dados, dados$cyl >= 6, select = c("mpg"))
barplot(table(tabelaa), col = "orange")

tabelab = subset(dados, dados$cyl >= 6, select = c("gear"))
barplot(table(tabelab), col = "red")

#barplot(tapply(InsectSprays$count, InsectSprays$spray, mean), col = "orange", horiz = T)
