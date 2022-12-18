### Importação do arquivo
micro_cursos_2015 <- read_csv2("MICRODADOS_CADASTRO_CURSOS_2015.csv", locale = locale(encoding = "latin1"))
micro_cursos_2016 <- read_csv2("MICRODADOS_CADASTRO_CURSOS_2016.csv", locale = locale(encoding = "latin1"))
micro_cursos_2017 <- read_csv2("MICRODADOS_CADASTRO_CURSOS_2017.csv", locale = locale(encoding = "latin1"))
micro_cursos_2018 <- read_csv2("MICRODADOS_CADASTRO_CURSOS_2018.csv", locale = locale(encoding = "latin1"))
micro_cursos_2019 <- read_csv2("MICRODADOS_CADASTRO_CURSOS_2019.csv", locale = locale(encoding = "latin1"))
micro_cursos_2020 <- read_csv2("MICRODADOS_CADASTRO_CURSOS_2020.csv", locale = locale(encoding = "latin1"))
micro_cursos_2021 <- read_csv2("MICRODADOS_CADASTRO_CURSOS_2021.csv", locale = locale(encoding = "latin1"))
colnames(micro_cursos_2020)[18] <- 'CO_CINE_ROTULO'

### Execução dos dados

source("scripts-barplot-geral/Preparacao_dados.R")
source("scripts-barplot-geral/Barplot_geral_2015.R")
source("scripts-barplot-geral/Barplot_geral_2021.R")

