micro_cursos_2015_area <- micro_cursos_2015 %>%
  filter(
    CO_CINE_AREA_DETALHADA == code 
)

micro_cursos_2016_area <- micro_cursos_2016 %>%
  filter(
    CO_CINE_AREA_DETALHADA == code 
)

micro_cursos_2017_area <- micro_cursos_2017 %>%
  filter(
    CO_CINE_AREA_DETALHADA == code 
)

micro_cursos_2018_area <- micro_cursos_2018 %>%
  filter(
    CO_CINE_AREA_DETALHADA == code 
)

micro_cursos_2019_area <- micro_cursos_2019 %>%
  filter(
    CO_CINE_AREA_DETALHADA == code 
)

micro_cursos_2020_area <- micro_cursos_2020 %>%
  filter(
    CO_CINE_AREA_DETALHADA == code 
)

micro_cursos_2021_area <- micro_cursos_2021 %>%
  filter(
    CO_CINE_AREA_DETALHADA == code 
)

micro_cursos_area = rbind(
  micro_cursos_2015_area, 
  micro_cursos_2016_area,
  micro_cursos_2017_area,
  micro_cursos_2018_area,
  micro_cursos_2019_area,
  micro_cursos_2020_area,
  micro_cursos_2021_area
)

source("scripts-tables-area/Analise_area_regiao.R")
source("scripts-tables-area/Analise_area_sit_aluno.R")
source("scripts-tables-area/Analise_area_matricula.R")
