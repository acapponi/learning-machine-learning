# MODELOS DE PREDICCION
# REGRESION LINEAL SIMPLE

library(tidyverse)

data(cars)
head(cars)

# =====================
# analisis exploratorio
# =====================

cars %>% ggplot(
    aes(
      x = speed,
      y = dist
    )
  ) +
  geom_point()

# tendencia al crecimeinto, un modelo lineal puede servir

cars %>% ggplot(
  aes(x = dist)
  ) +
  geom_boxplot() +
  coord_flip()

# si hay muchos outliers regresion lineal no es muy confiable

cor(cars$speed, cars$dist) # coeficiente de correlacion



