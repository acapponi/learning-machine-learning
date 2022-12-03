library(tidyverse)

data("Orange")

head(Orange)

#cuanto medira la circuncerencia a los 800 dias?
#deberiamos plantear un modelo de regresion lineal

Orange %>% 
  ggplot(aes(
    x = age, 
    y = circumference
  )) +
  geom_point() +
  geom_abline( 
    intercept = 10, #intercept -> ordenada al origen
    slope = .1, # slope -> pendiente
    col = "blue"
    )

# abline traza una linea a la que nosotros le ponemos los valores
# lo mejor seria encontrar la recta q se ajuste

# lm se basa en metodos de  optimizacion de minimos cuadrados
# me da a devolver los mejofres valores para pendiente y ordenada
lm (circumference ~ age, data = Orange) # circunferencia respecto de age


Orange %>% 
  ggplot(aes(
    x = age, 
    y = circumference
  )) +
  geom_point() +
  geom_abline( 
    intercept = 17.3997,
    slope = 0.1068,
    col = "blue"
  ) +
  geom_vline(
    xintercept = 800,
    col = "red"
  )

x <- 800
medida <- 0.1068 * x + 17.3997
medida

