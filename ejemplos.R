a <- c(TRUE, FALSE, TRUE, FALSE)
b <- c(FALSE, FALSE, TRUE, TRUE)
a && b
# solo compara el primer elemento de los dos vectores,
# c sirve para definir un vector, 
# <- operador de asignacion


c <- "caracteres"
c
# [1] "caracteres"
c <- caracteres
# Error: object 'caracteres' not found
a <- 1
b <- "1"
a + b
# Error in a + b : non-numeric argument to binary operator


# el tipo numeric como el float en C
# el tipo complex es para numeros complejos
# el tipo logical TRUE, FALSE, T, F
T && F
# [1] FALSE


a <- 5
b <- 5L
a/2.5
# [1] 2
b/2.5
# [1] 2


1/0
# [1] Inf
0/0
# [1] NaN



attributes(a)
NULL
> attributes(b)
NULL
> attributes(c)
NULL
> attributes(ncol)
NULL
> class(a)
[1] "numeric"
> class(b)
[1] "integer"
> a = 5
> b = 3
> b <- 3
> a + b
[1] 8



> 3 -> a
> a <- 1:10
> a <- as.numeric(TRUE)
> b <- as.logical(5)
> b <- as.logical(0)
> b <- as.logical(1)
> b <- as.logical(1)
> c <- as.character(678.9)
> c <- as.character(678.9+8i)
> d <- as.integer(7+9i)
Warning message:
  imaginary parts discarded in coercion 
> e <- as.numeric("abc")
Warning message:
  NAs introduced by coercion 


> m <- matrix(nrow = 2, ncol = 3)
> m
[,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
> dim(m)
[1] 2 3
> class(dim(m))
[1] "integer"
> attr(m)
Error in attr(m) : either 2 or 3 arguments are required
> attributes(m)
$dim
[1] 2 3

> m <- matrix(1:6, nrow = 2, ncol = 3)
> m
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> m <- 1:10
> dim(m) <- c(2, 5)
> m
[,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10


> x <- 5:8
> y <- 12:15
> cbind(x, y)
x  y
[1,] 5 12
[2,] 6 13
[3,] 7 14
[4,] 8 15
> cbind(x, y, x, x, y, x)
x  y x x  y x
[1,] 5 12 5 5 12 5
[2,] 6 13 6 6 13 6
[3,] 7 14 7 7 14 7
[4,] 8 15 8 8 15 8
> x <- 5:7
> cbind(x, y)
x  y
[1,] 5 12
[2,] 6 13
[3,] 7 14
[4,] 5 15
Warning message:
  In cbind(x, y) :
  number of rows of result is not a multiple of vector length (arg 1)
> y <- 5:6
> cbind(x, y)
x y
[1,] 5 5
[2,] 6 6
[3,] 7 5
Warning message:
  In cbind(x, y) :
  number of rows of result is not a multiple of vector length (arg 2)
> rbind(x, y)
[,1] [,2] [,3]
x    5    6    7
y    5    6    5
Warning message:
  In rbind(x, y) :
  number of columns of result is not a multiple of vector length (arg 2)


> x <- factor(c("SI", "NO", "NO"), level = c("SI", "NO"))
> x
[1] SI NO NO
Levels: SI NO
> class(x)
[1] "factor"
> x <- factor(c("SI", "NO", "NO"))
> x
[1] SI NO NO
Levels: NO SI


> x <- c(1, 2, 3, 4, NA, NaN)
> is.na(x)
[1] FALSE FALSE FALSE FALSE  TRUE  TRUE
> is.nan(x)
[1] FALSE FALSE FALSE FALSE FALSE  TRUE
> TRUE + TRUE
[1] 2



> x <- data.frame(columna1 = 1:4, columna2 = c(T, T, T, F))
> x
columna1 columna2
1        1     TRUE
2        2     TRUE
3        3     TRUE
4        4    FALSE
> x <- data.frame(columna1 = 1:2, columna2 = c(T, T, T, F))
> x
columna1 columna2
1        1     TRUE
2        2     TRUE
3        1     TRUE
4        2    FALSE
> x <- data.frame(columna1 = 1:5, columna2 = c(T, T, T, F))
Error in data.frame(columna1 = 1:5, columna2 = c(T, T, T, F)) : 
  arguments imply differing number of rows: 5, 4
> x <- data.frame(columna1 = 1:6, columna2 = c(T, T, T, F))
Error in data.frame(columna1 = 1:6, columna2 = c(T, T, T, F)) : 
  arguments imply differing number of rows: 6, 4
> x <- data.frame(columna1 = 1:3, columna2 = c(T, T, T, F))
Error in data.frame(columna1 = 1:3, columna2 = c(T, T, T, F)) : 
  arguments imply differing number of rows: 3, 4
> x <- data.frame(columna1 = 1:8, columna2 = c(T, T, T, F))
> x
columna1 columna2
1        1     TRUE
2        2     TRUE
3        3     TRUE
4        4    FALSE
5        5     TRUE
6        6     TRUE
7        7     TRUE
8        8    FALSE


> x <- 11:14
> names(x)
NULL
> name(x) <- c("once", "doce", "trece", "catorce")
Error in name(x) <- c("once", "doce", "trece", "catorce") : 
  could not find function "name<-"
> names(x) <- c("once", "doce", "trece", "catorce")
> x
once    doce   trece catorce 
11      12      13      14 
> x[2]
doce 
12 
> x2:3
Error: object 'x2' not found
> x[2:3]
doce trece 
12    13 
> x[2,4]
Error in x[2, 4] : incorrect number of dimensions
> x[2:4]
doce   trece catorce 
12      13      14 
> a <- 1
> x[a]
once 
11 
> x[a]
once 
11 
> x["$once"]
<NA> 
  NA 
> x["once"]
once 
11 


> 3^2
[1] 9
> 3**2
[1] 9



> x <- 7:9
> y <- 9:12
> x* y
[1] 63 80 99 84
Warning message:
  In x * y : longer object length is not a multiple of shorter object length



> x <- matrix(1:20, 5, 4)
> x[3, 4]
[1] 18
> x[3, 4, drop = FALSE]
[,1]
[1,]   18
con drop da una submatriz
> class(x[3, 4, drop = FALSE])
[1] "matrix"
> x <- list(hola1 = 1:10, hola2 = 0.005)
> x$hola1
[1]  1  2  3  4  5  6  7  8  9 10
> x$hola2
[1] 0.005
> x[1]
$hola1
[1]  1  2  3  4  5  6  7  8  9 10
> x[[1]]
[1]  1  2  3  4  5  6  7  8  9 10
con dos corchetes regresa los elementos, no la lista
con un corchete regresa la lista

> x <- c(44, NA, NA, 67)
> fal <- is.na(x)
> fal
[1] FALSE  TRUE  TRUE FALSE
> x[!fal]
[1] 44 67
> x[fal]
[1] NA NA


> mis_letras <- c("a", "b", "c", "d")
> seq_along(mis_letras)
[1] 1 2 3 4
> length(mis_letras)
[1] 4
for(letras in mis_letras){ print(mis_letras)}
[1] "a" "b" "c" "d"
[1] "a" "b" "c" "d"
[1] "a" "b" "c" "d"
[1] "a" "b" "c" "d"
> for(i in seq_along(mis_letras)){ print(mis_letras[i])}
[1] "a"
[1] "b"
[1] "c"
[1] "d"
> for(i in 1:length(mis_letras)){ print(mis_letras[i])}
[1] "a"
[1] "b"
[1] "c"
[1] "d"


> x <- matrix(seq(1, 18, 2), 3, 3)
> x
[,1] [,2] [,3]
[1,]    1    7   13
[2,]    3    9   15
[3,]    5   11   17
> for(i in seq_len(nrow(x))){
  + for(j in seq_len(ncol(x))){
    + print(x[i, j])}}
[1] 1
[1] 7
[1] 13
[1] 3
[1] 9
[1] 15
[1] 5
[1] 11
[1] 17


juego de la moneda, se empieza con 5 pesos, 
y se juega mientras se cumpla la condición
del while
a <- 5
while(a >= 3 && a<=10){
  print(a)
  moneda <- rbinom(1, 1, 0.5)
  if(moneda == 1){
    a <- a + 1
  } else {
    a <- a -1
  }
}


for(i in 1:100){
  if(i < 20){
    next}
  print(i)
}


----------
  
  plot(c(1, 3), c(1, 8), type = "n", xlab = "x", ylab = "y")
x <- c(1, 2, 3)
y <- c(1, 2, 8)
points(x, y)


> mi_linea <- lm(y ~ x)
> abline(mi_linea)
> class(mi_linea)
[1] "lm"
> mi_linea

Call:
  lm(formula = y ~ x)

Coefficients:
  (Intercept)            x  
-3.333        3.500  
valor de donde intercepta y la pendiente


> summary(mi_linea)

Call:
  lm(formula = y ~ x)

Residuals:
  1       2       3 
0.8333 -1.6667  0.8333 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept)   -3.333      3.118  -1.069    0.479
x              3.500      1.443   2.425    0.249

Residual standard error: 2.041 on 1 degrees of freedom
Multiple R-squared:  0.8547,	Adjusted R-squared:  0.7093 
F-statistic:  5.88 on 1 and 1 DF,  p-value: 0.249


hist(iris$Sepal.Length)
hist(iris$Sepal.Length, freq = FALSE)
hist(iris$Sepal.Length, breaks = 100)

datos <- iris$Sepal.Width
h <- hist(datos, breaks = 10, col = "red")
xfit <- seq(min(datos), max(datos), length=40)
yfit <- dnorm(xfit, mean = mean(datos), sd = sd(datos))
yfit <- yfit*diff(h$mids[1:2]) * length(datos)
lines(xfit, yfit, col = "blue", lwd=2)


density(datos)
plot(density(datos))


> dotchart(mtcars$mpg, labels=row.names(mtcars))
> plot(iris$Sepal.Length, iris$Sepal.Width)
> dotchart(mtcars$mpg, labels=row.names(mtcars))


> tail(mtcars)
mpg cyl  disp  hp drat    wt qsec vs am gear carb
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.7  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.9  1  1    5    2
Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.5  0  1    5    4
Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.5  0  1    5    6
Maserati Bora  15.0   8 301.0 335 3.54 3.570 14.6  0  1    5    8
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.6  1  1    4    2
> boxplot(mpg~cyl, data=mtcars)


> hist(mtcars$mpg)
> par(col.lab = "red")
> hist(mtcars$mpg)
> hist(mtcars$cyl)
> hist(mtcars$cyl, col.lab = "green")
> hist(mtcars$cyl)



> plot(c(1,100), c(1,100), type="n")
> n <- 100
> arcoiris <- rainbow(7)
> for(i in 1:n){lines(c(i,0), c(100, i), col=arcoiris[i])}

for(i in 1:n){lines(c(i,0), c(100, i), col=rainbow(n)[i])}

for(i in 1:n){lines(c(i,0), c(100, i), col=heat.colors(n)[i])}

for(i in 1:n){lines(c(i,0), c(100, i), col=topo.colors(n)[i])}

for(i in 1:n){lines(c(i,0), c(100, i), col=cm.colors(n)[i])}

for(i in 1:n){lines(c(i,0), c(100, i), col=colors(n)[i])}



plot(1:10, 1:10, type="n")
text(3, 3, "Hola Mundo, fuente por omisiòn")
text(4, 4, family="sans", "Hola Mundo con Sans")
text(5, 5, family="serif", "Hola Mundo con Serif")
text(6, 6, family="mono", "Hola Mundo con Mono")


plot(rnorm(100), rnorm(100), xlab=paste(expression(mu[0]), "hola"))


par(mar = c(4, 4, 2, 0.1))
plot(rnorm(100), rnorm(100), 
     xlab = expression(hat(mu)[0]), 
     ylab = expression(alpha^beta),
     main = expression(paste("Gráfica ", 
                             alpha^beta,
                             " vs ",
                             hat(mu)[0])))

-----------------------
  
  
  > x <- sort(rnorm(1000))
> y <- rnorm(1000)
> z <- rnorm(1000) + atan2(x, y)
> open3d()
plot3d(x, y, z, col=rainbow(100), type="p")




-----------------------------------
  
  regexpr("asd", "asldadosaoipoiepoiakslaasdalkñlkñasd")
gregexpr("asd", "asldadosaoipoiepoiakslaasdalkñlkñasd")

regexpr("[aeiou]", "aSeeDiFoGuHJKOiNNS")
gregexpr("[aeiou]", "aSeeDiFoGuHJKOiNNS")

grep("a.i", c("imaginarios", "estudio", "imantado"))
grep("i.a", c("imaginarios", "estudio", "imantado"))

grep(".", c("asfca", "df", "h.h"))
grep("\\.", c("asfca", "df", "h.h"))

-----------------------------------
  
  datos de diamantes, con cuatro c (kilates, corte, color, claridad), 
las variables para apreciar un diamante
tail(diamonds)
set.seed(100)    # varios algoritmo de números aleatorios, este usa 
# una semilla de entrada a un algoritmo para generar 
# los núm aleatorios
dchico <- diamonds[sample(nrow(diamonds), 100), ] # muestra pseudoaleatoria del
# del dataset diamond
qplot(carat, price, data = diamonds)
qplot(carat, price, data = dchico)
qplot(log(carat), log(price), data = dchico)
qplot(log(carat), log(price), data = diamonds)
qplot(carat, price, data = diamonds, alpha = I(1/10)) # nivel de transparencia, canal alpha
# por cada diez puntos ponga un punto sólido
# para que se distingan mejor los puntos
qplot(carat, price, data = diamonds, color = color)   # toma los valores de las variables categóricas
# del atributo color del dataset
qplot(carat, price, data = diamonds, colour = color)
qplot(carat, price, data = diamonds, colour = clarity) # a cada valor categórico del atributo clarity 
# del dataset diamonds le asiga un color
qplot(carat, price, data = diamonds, colour = x)       # como x tiene valores continuos hace un degradado
qplot(carat, price, data = diamonds, shape = cut)      # para el shape pone diferentes formas dependiendo del
# del valor del atributo cut del dataset diamonds
qplot(carat, price, data = dchico, shape = cut)
qplot(carat, price, data = dchico, shape = cut, colour = cut)
qplot(carat, price, data = diamonds, size = table)

qplot(carat, price, data = diamonds, facets = color ~ .)
qplot(carat, price, data = diamonds, colour = color, facets = color ~ .)
qplot(carat, price, data = diamonds, colour = color, alpha = I(1/10), facets = color ~ .)

qplot(carat, price, data = dchico, geom = c("point", "smooth"))

qplot(color, price/carat, data = diamonds, geom = "jitter") # muestra dispersión de los datos por categoría
qplot(color, price/carat, data = diamonds, geom = "boxplot") # grafica los datos anteriores sintetizados en un boxplot

tail(economics)
qplot(date, uempmed, data = economics, geom = "line") # taza de desempleo conforme avanza el tiempo
qplot(date, uempmed, data = economics, geom = "path")

qplot(carat, data = diamonds, geom = "histogram", binwidth = 0.01, xlim = c(0, 3))
qplot(carat, data = diamonds, geom = "freqpoly", binwidth = 0.01, xlim = c(0, 3))
qplot(carat, data = diamonds, geom = "density", xlim = c(0, 3))

----------------------------------
  
  m1 <- matrix(1:9, nrow=3, ncol=3)
m2 <- matrix(10:19, nrow=3, ncol=3)
m1 %*% m2

---------------------------------
  
  
  