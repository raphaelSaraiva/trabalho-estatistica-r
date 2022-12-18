## Instalação e Carregamento dos Pacotes Necessários

pacotes <- c("readxl", "knitr", "kableExtra", "tidyverse", "plotly", "plyr",
             "gt", "descr", "crosstable", "gtools", "writexl", "flextable", 
             "webshot2", "freqdist", "fdth", "viridis", "xtable", "qpcR", "rrtable")

if(sum(as.numeric(!pacotes %in% installed.packages())) != 0){
  instalador <- pacotes[!pacotes %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()}
  sapply(pacotes, require, character = T) 
} else {
  sapply(pacotes, require, character = T) 
}

