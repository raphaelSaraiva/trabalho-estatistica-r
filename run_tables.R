
### Defina o ano de analise
year <- "2021"

### pacotes
source("Instalacao_de_pacotes.R")

### Carregando CSV
source("Preparacao_dados_tabelas.R")

### Importação do arquivo
fileName <- sprintf("cursos-%s.RData",year)
load(fileName)


path_tables <- sprintf("tables/%s",year) 

## Cria toda as Tabelas
dir.create (path_tables, recursive = TRUE)

source("scripts-tables/Analise_cat_administrativa.R")
source("scripts-tables/Analise_dist_regiao.R")
source("scripts-tables/Analise_estado.R")
source("scripts-tables/Analise_grau_academico.R")
source("scripts-tables/Analise_ingressantes.R")
source("scripts-tables/Analise_matrícula.R")
source("scripts-tables/Analise_mod_academica.R")
source("scripts-tables/Analise_org_academica.R")
source("scripts-tables/Analise_turno.R")

