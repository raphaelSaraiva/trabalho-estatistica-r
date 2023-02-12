### Importação do arquivo
micro_cursos_2015 <- read_csv2("datasets/inep/MICRODADOS_CADASTRO_CURSOS_2015.csv", locale = locale(encoding = "latin1"))
micro_cursos_2016 <- read_csv2("datasets/inep/MICRODADOS_CADASTRO_CURSOS_2016.csv", locale = locale(encoding = "latin1"))
micro_cursos_2017 <- read_csv2("datasets/inep/MICRODADOS_CADASTRO_CURSOS_2017.csv", locale = locale(encoding = "latin1"))
micro_cursos_2018 <- read_csv2("datasets/inep/MICRODADOS_CADASTRO_CURSOS_2018.csv", locale = locale(encoding = "latin1"))
micro_cursos_2019 <- read_csv2("datasets/inep/MICRODADOS_CADASTRO_CURSOS_2019.csv", locale = locale(encoding = "latin1"))
micro_cursos_2020 <- read_csv2("datasets/inep/MICRODADOS_CADASTRO_CURSOS_2020.csv", locale = locale(encoding = "latin1"))
micro_cursos_2021 <- read_csv2("datasets/inep/MICRODADOS_CADASTRO_CURSOS_2021.csv", locale = locale(encoding = "latin1"))
colnames(micro_cursos_2020)[18] <- 'CO_CINE_ROTULO'

### Execução dos dados

code = '0612'
name_area = '0612 - Infraestrutura e gestão de TIC'
source("Preparação_dados_area.R")
code = '0613'
name_area = '0613 -  Produção de software'
source("Preparação_dados_area.R")
code = '0614'
name_area = '0614 -  Ciência da computação'
source("Preparação_dados_area.R")
code = '0615'
name_area = '0615 - Gestão e desenvolvimento de sistemas de informação'
source("Preparação_dados_area.R")
code = '0616'
name_area = '0616 - Desenvolvimento de sistemas que integram software e hardware'
source("Preparação_dados_area.R")
code = '0617'
name_area = '0617 - Soluções Computacionais para Domínios Específicos'
source("Preparação_dados_area.R")

