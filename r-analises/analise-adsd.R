library(readr)
library(dplyr)
library(ggplot2)
library(tidyr)

post.150.1g = read_csv("../results/1gbPost250.csv")
post.50.1g = read_csv("../results/1gbPost50.csv")
put.150.1g = read_csv("../results/1gbPut250.csv")
put.50.1g = read_csv("../results/1gbPut50.csv")

post.150.1g$tipo = "Post 150"
post.50.1g$tipo = "Post 50"
put.150.1g$tipo = "Put 150"
put.50.1g$tipo = "Put 50"


dados1GB = post.150.1g %>% select(tempoBanco, tempoHTTP, tipo) %>%
        rbind( post.50.1g %>% select(tempoBanco, tempoHTTP, tipo) ) %>%
        rbind( put.150.1g %>% select(tempoBanco, tempoHTTP, tipo) ) %>%
        rbind( put.50.1g %>% select(tempoBanco, tempoHTTP, tipo) )

db1GB %>%
  ggplot(aes(x= tipo, y=tempoBanco)) + 
  geom_boxplot() + 
  labs(title = "Tempo de requisição ao banco 1GB RAM", x = "Tipo de requisição", y = "Tempo")

db1GB %>%
  ggplot(aes(x= tipo, y=log(tempoBanco))) + 
  geom_boxplot() + 
  labs(title = "Tempo em log de requisição ao banco 1GB RAM", x = "Tipo de requisição", y = "Tempo em log")

db1GB %>%
  ggplot(aes(x= tipo, y=tempoHTTP)) + 
  geom_boxplot() + 
  labs(title = "Tempo de requisição ao servidor 1GB RAM", x = "Tipo de requisição", y = "Tempo")

db1GB %>%
  ggplot(aes(x= tipo, y=log(tempoHTTP))) + 
  geom_boxplot() + 
  labs(title = "Tempo em log de requisição ao servidor 1GB RAM", x = "Tipo de requisição", y = "Tempo em log")


post.150.500mb = read_csv("../result/500mbPost250.csv")
post.50.500mb = read_csv("../result/500mbPost50.csv")
put.150.500mb = read_csv("../result/500mbPut250.csv")
put.50.500mb = read_csv("../result/500mbPut50.csv")

post.150.500mb$tipo = "Post 150"
post.50.500mb$tipo = "Post 50"
put.150.500mb$tipo = "Put 150"
put.50.500mb$tipo = "Put 50"

dados500mb = post.150.500mb %>% select(tempoBanco, tempoHTTP, tipo) %>%
  rbind( post.50.500mb %>% select(tempoBanco, tempoHTTP, tipo) ) %>%
  rbind( put.150.500mb %>% select(tempoBanco, tempoHTTP, tipo) ) %>%
  rbind( put.50.500mb %>% select(tempoBanco, tempoHTTP, tipo) )

dados500mb %>%
  ggplot(aes(x= tipo, y=tempoBanco)) + 
  geom_boxplot() + 
  labs(title = "Tempo de requisição ao banco 500MB RAM", x = "Tipo de requisição", y = "Tempo")

dados500mb %>%
  ggplot(aes(x= tipo, y=log(tempoBanco))) + 
  geom_boxplot() + 
  labs(title = "Tempo em log de requisição ao banco 500MB RAM", x = "Tipo de requisição", y = "Tempo em log")

dados500mb %>%
  ggplot(aes(x= tipo, y=tempoHTTP)) + 
  geom_boxplot() + 
  labs(title = "Tempo de requisição ao servidor 500MB RAM", x = "Tipo de requisição", y = "Tempo")

dados500mb %>%
  ggplot(aes(x= tipo, y=log(tempoHTTP))) + 
  geom_boxplot() + 
  labs(title = "Tempo em log de requisição ao servidor 500MB RAM", x = "Tipo de requisição", y = "Tempo em log")



post.150.250mb = read_csv("../result/100mbPost250.csv")
post.50.250mb = read_csv("../result/100mbPost50.csv")
put.150.250mb = read_csv("../result/100mbPut250.csv")
put.50.250mb = read_csv("../result/100mbPut50.csv")

post.150.250mb$tipo = "Post 150"
post.50.250mb$tipo = "Post 50"
put.150.250mb$tipo = "Put 150"
put.50.250mb$tipo = "Put 50"

dados100mb = post.150.250mb %>% select(tempoBanco, tempoHTTP, tipo) %>%
  rbind( post.50.250mb %>% select(tempoBanco, tempoHTTP, tipo) ) %>%
  rbind( put.150.250mb %>% select(tempoBanco, tempoHTTP, tipo) ) %>%
  rbind( put.50.250mb %>% select(tempoBanco, tempoHTTP, tipo) )

dados100mb %>%
  ggplot(aes(x= tipo, y=tempoBanco)) + 
  geom_boxplot() + 
  labs(title = "Tempo de requisição ao banco 250MB RAM", x = "Tipo de requisição", y = "Tempo")

dados100mb %>%
  ggplot(aes(x= tipo, y=log(tempoBanco))) + 
  geom_boxplot() + 
  labs(title = "Tempo em log de requisição ao banco 250MB RAM", x = "Tipo de requisição", y = "Tempo em log")

dados100mb %>%
  ggplot(aes(x= tipo, y=tempoHTTP)) + 
  geom_boxplot() + 
  labs(title = "Tempo de requisição ao servidor 250MB RAM", x = "Tipo de requisição", y = "Tempo")

dados100mb %>%
  ggplot(aes(x= tipo, y=log(tempoHTTP))) + 
  geom_boxplot() + 
  labs(title = "Tempo em log de requisição ao servidor 250MB RAM", x = "Tipo de requisição", y = "Tempo em log")
