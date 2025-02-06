#install.packages("h2o")
#install.packages("tidyverse")
#install.packages("ggbeeswarm")

library(h2o)
library(tidyverse)
library(ggbeeswarm)

dataset <- tibble(produtividade = c(rnorm(1000), rnorm(1000, 0.25)),
                  rendimento = runif(2000),
                  custo = rf(2000, df1 = 5, df2 = 2),
                  prioridade = c(sample(rep(c('Baixa', 'Media', 'Alta'), c(3000,300,400))),
                                 sample(c('Baixa', 'Media', 'Alta'), 1000, prob = c(0.25, 0.25, 0.50))),
                  eficiencia = rnorm(2000),
                  manutencao = rep(c(0,1), c(1050,950))
                  )
View(dataset)