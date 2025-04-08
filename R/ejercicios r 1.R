edad <- 22
peso <- 70.5

nombre <- 'Raquel'
apellido <- 'García'

print(edad)

nombre

edad_en_meses <- edad*12
print(edad_en_meses)

nombre_completo <- paste(nombre, apellido)
print(nombre_completo)


suma <- 23
print(suma)

mi_lista <- list(
  nombre = 'Juan',
  edad = 30,
  alturas = c(1.75, 1.76, 1.77),
  matriz = matrix (1:6, nrow=2),
  activo = TRUE
)
print(mi_lista)
mi_lista$nombre
mi_lista$alturas[2]
mi_lista$edad <- 31
mi_lista$edad
mi_lista_nombre <- 'Juan Pérez'
mi_lista_nombre
mi_lista$correo <- 'email@email.com'
mi_lista$habilidades <- c('R', 'Python', 'SQL')
print(mi_lista)
names(mi_lista)

#Data Frames

nombre <- c('Juan', 'Maria', 'Jose', 'Teresa')
edades <- c(25, 30, 28, 33)
salarios <- c(3500, 2100, 1500, 3200)
departamentos <- c('ventas', 'IT', 'Marketing', 'RRHH')

#Creando el dataframe
empleados <- data.frame(
  Nombre = nombre,
  Edad = edades,
  Salario = salarios,
  Departamento = departamentos
)

print(empleados)
str(empleados)
summary(empleados)
empleados$Nombre
empleados[['Salario']]
empleados[2,]
empleados[4, 3]
#añadir una columna
empleados$Experiencia <- c(2,5,4,8)
print(empleados)
#añadir una fila
nuevo_empleado <- data.frame(
  Nombre = 'Jorge',
  Edad = 24,
  Salario = 2600,
  Departamento = 'Admin',
  Experiencia = 2
)
empleados <- rbind(empleados, nuevo_empleado)
print(empleados)
#Eliminar una columna
empleados$Experiencia <- NULL
head(empleados)
#Funciones
calcular_area_circulo <- function(radio) {
  if(radio < 0) {
    stop('El radio debe ser un número positivo')
  }
  area <- pi*radio^2
  return(area)
}
calcular_area_circulo(5)
#Función con múltiples argumentos
convertir_temperaturas <- function(temp, de= 'C', a = 'F'){
  de <- toupper(de) #Convierte a mayuscula todo lo q le des a de c-> C
  a <- toupper(a)
  
  if(de == 'C'){
    temp_C <- temp
  }else if(de == 'F'){
    temp_C <- (temp -32) * 5/9
  }else if (de == 'K'){
    temp_C <- temp -273.15
  }else{
    stop("Unidad de origen no válida. Use 'C', 'F' o 'K'")
  }
  if(a == 'C'){
    return(temp_C)
  }else if (a == 'F'){
    return(temp_C * 9/5 +32)
  }else if (a == 'K'){
    return(temp_C + 273.15) 
  }else{
    stop("Unidad de origen no válida. Use 'C', 'F' o 'K'")
  } 
}

convertir_temperaturas(25, 'f')
convertir_temperaturas(25)
convertir_temperaturas(315, de = 'K', a = 'C')
