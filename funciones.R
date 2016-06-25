mi_funcion <- function(x, y, operacion = "suma"){
  if(is.null(x) || is.null(y)){
    return("Error")
  }
  if(operacion == "suma"){
    return(x + y)
  }
  if(operacion == "resta"){
    return(x - y)
  }
  if(operacion == "multiplicacion"){
    return(x * y)
  }
  if(operacion == "division"){
    return(x/y)
  }
}


arriba_de <- function(x, limite){
  # indices es un vector lógico
  indices <- x > limite
  x[indices]
}


suma_de_columnas1 <- function(datos){
  num_col <- ncol(datos)
  num_ren <- nrow(datos)
  suma_x_cols <- numeric(num_col)
  for(j in 1:num_col){
    for(i in 1:num_ren){
      suma_x_cols[j] <- suma_x_cols[j] + datos[i, j]
    }
  }
  suma_x_cols
}


suma_de_columnas2 <- function(datos){
  num_col <- ncol(datos)
  suma_x_cols <- numeric(num_col)
  for(i in 1:num_col){
    suma_x_cols[i] <- sum(datos[, i])
  }
  suma_x_cols
}




