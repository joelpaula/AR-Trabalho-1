##### SET-UP #######################################################################################
library(igraph)


# setwd("C:/Users/catcc/OneDrive - ISCTE-IUL/Ci?ncia de Dados/AR1/AnaliseDeRedes")


### Graph 1
graph1 <- read_graph("Trab1.txt",
                 format = c("edgelist"), 
                 n = 15, 
                 directed = T)
plot(graph1)


### Graph 2
graph2 <- sample_gnm(15, 18)
plot(graph2)



##### Exerc?cio Q1 ################################################################################

### Graph 1
edge_density(graph1, loops = F) 
# 0.08571429
sum(degree(graph1, mode = "in")) 
# grau incidente -> 18
sum(degree(graph1, mode = "out")) 
# grau divergente -> 18
sum(degree(graph1, mode = "total")) 
# grau total (grau incidente + grau divergente) -> 36
mean(degree(graph1, mode = "total")) 
# grau m?dio -> 2.4


### Graph 2
edge_density(graph2, loops = F) 
# 0.1714286
sum(degree(graph2, mode = "total")) 
# grau total (grau incidente + grau divergente) -> 36
mean(degree(graph2, mode = "total")) 
# grau m?dio -> 2.4



##### Exerc?cio Q2 ################################################################################

### Graph 1
assortativity_degree(graph1, directed = T) 
# -0.7713892
# Conclu?mos que:
#   - a correla??o ? negativa
#   - a rede ? n?o associativa
distances(graph1)
mean_distance(graph1, directed = T) 
# m?dia dos comprimentos dos caminhos mais curtos -> 1.485714
diameter(graph1, directed = T) # 2
# A primeira rede "graph2" diz-se fortemente conexa uma vez que 
# existe um caminho entre qualquer par de nodos (i,j) , de i para j e de j para i

transitivity(graph1)
# Global clustering coefficient -> 0.1818182
transitivity(graph1, type = "average")
# Average clustering coefficient -> 0.5240741

### Graph 2
assortativity_degree(graph2, directed = F) 
# 0.02857143
# Conclu?mos que:
#   - a correla??o ? positiva
#   - a rede ? associativa
distances(graph2)
mean_distance(graph2, directed = F) 
# m?dia dos comprimentos dos caminhos mais curtos -> 2.695238
diameter(graph2, directed = F) # 5
# A segunda rede "graph2" diz-se conexa uma vez que 
# existe um caminho entre qualquer par de nodos














