
path <- sprintf("./datasets/inep/MICRODADOS_CADASTRO_CURSOS_%s.csv",year) 

### Importação do arquivo
micro_cursos <- read_csv2(path, locale = locale(encoding = "latin1"))
colnames(micro_cursos)[18] <- 'CO_CINE_ROTULO'

### Preparação dos dados
micro_cursos <- micro_cursos %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
    CO_CINE_ROTULO == '"0612D01"' |
    CO_CINE_ROTULO == '"0612G01"' |
    CO_CINE_ROTULO == '"0612R01"' |
    CO_CINE_ROTULO == '"0613E01"' |
    CO_CINE_ROTULO == '"0613J01"' |
    CO_CINE_ROTULO == '"0614C01"' |
    CO_CINE_ROTULO == '"0614I01"' |
    CO_CINE_ROTULO == '"0615S01"' |
    CO_CINE_ROTULO == '"0615S02"' |
    CO_CINE_ROTULO == '"0615S03"' |
    CO_CINE_ROTULO == '"0616E01"' |
    CO_CINE_ROTULO == '"0616S01"' |
    CO_CINE_ROTULO == '"0616I01"' |
    CO_CINE_ROTULO == '"0617A01"' |
    CO_CINE_ROTULO == '"0617C01"' |
    CO_CINE_ROTULO == '"0617C02"' |
    CO_CINE_ROTULO == '"0617C03"' 
    )


fileNameR <- sprintf("datasets/r/cursos-%s.RData",year) 
save(micro_cursos, file = fileNameR)

fileNameCSV <- sprintf("datasets/csv/cursos-%s.csv",year) 
write.csv(micro_cursos, fileNameCSV, row.names=FALSE)

