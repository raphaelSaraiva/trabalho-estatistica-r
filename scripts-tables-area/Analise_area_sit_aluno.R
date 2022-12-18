micro_cursos_area$NO_CINE_AREA_DETALHADA <- factor(micro_cursos_area$NO_CINE_AREA_DETALHADA)
micro_cursos_area$NU_ANO_CENSO <- factor(micro_cursos_area$NU_ANO_CENSO)

dir.create ("tables_by_area/sit_aluno/ingressantes", recursive = TRUE)
path1 <- sprintf("tables_by_area/sit_aluno/ingressantes/%s.png",name_area) 
path2 <- sprintf("tables_by_area/sit_aluno/ingressantes/%s.html",name_area) 
header_name <- sprintf("Situação Alunos Ingressantes - %s",name_area) 

micro_cursos_area_presencial <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '1'
)


micro_cursos_area_presencial <- ddply(micro_cursos_area_presencial,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_ingressantes <- micro_cursos_area_presencial[ , c("NU_ANO_CENSO","QT_ING", "QT_ING_MASC", "QT_ING_FEM")]  

colnames(micro_cursos_area_ingressantes)[1] <- 'Ano'
colnames(micro_cursos_area_ingressantes)[2] <- 'Total de Ingressantes Presencial'
colnames(micro_cursos_area_ingressantes)[3] <- 'Ingressantes Masculino Presencial'
colnames(micro_cursos_area_ingressantes)[4] <- 'Ingressantes Feminino Presencial'

micro_cursos_area_distancia <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '2'
)

micro_cursos_area_distancia <- ddply(micro_cursos_area_distancia,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_distancia <- micro_cursos_area_distancia[ , c("QT_ING", "QT_ING_MASC", "QT_ING_FEM")]  
micro_cursos_area_ingressantes <- cbind(micro_cursos_area_ingressantes, micro_cursos_area_distancia)

colnames(micro_cursos_area_ingressantes)[5] <- 'Total de Ingressantes Distancia'
colnames(micro_cursos_area_ingressantes)[6] <- 'Ingressantes Masculino Distancia'
colnames(micro_cursos_area_ingressantes)[7] <- 'Ingressantes Feminino Distancia'

micro_cursos_area_ingressantes <- micro_cursos_area_ingressantes[, c('Ano', 'Ingressantes Masculino Presencial','Ingressantes Feminino Presencial', 'Ingressantes Masculino Distancia', 'Ingressantes Feminino Distancia' ,'Total de Ingressantes Presencial', 'Total de Ingressantes Distancia')]

tab1 <- micro_cursos_area_ingressantes %>%
  flextable() %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  add_header_lines(values = header_name) %>% 
  set_header_labels(NU_ANO_CENSO = "Ano")

tab1
tab1 %>% 
  save_as_image(path1, webshot = "webshot2")  

save_as_html(tab1, path = path2) # and save as html

#-------------------------------------------------------------------------------------------------------------------------

dir.create ("tables_by_area/sit_aluno/matriculados", recursive = TRUE)
path1 <- sprintf("tables_by_area/sit_aluno/matriculados/%s.png",name_area) 
path2 <- sprintf("tables_by_area/sit_aluno/matriculados/%s.html",name_area) 
header_name <- sprintf("Situação Alunos Matriculados - %s",name_area) 

micro_cursos_area_presencial <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '1'
)

micro_cursos_area_presencial <- ddply(micro_cursos_area_presencial,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_matriculados <- micro_cursos_area_presencial[ , c("NU_ANO_CENSO","QT_MAT", "QT_MAT_MASC", "QT_MAT_FEM")]  

colnames(micro_cursos_area_matriculados)[1] <- 'Ano'
colnames(micro_cursos_area_matriculados)[2] <- 'Total de Matriculados Presencial'
colnames(micro_cursos_area_matriculados)[3] <- 'Matriculados Masculino Presencial'
colnames(micro_cursos_area_matriculados)[4] <- 'Matriculados Feminino Presencial'

micro_cursos_area_distancia <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '2'
  )

micro_cursos_area_distancia <- ddply(micro_cursos_area_distancia,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_distancia <- micro_cursos_area_distancia[ , c("QT_MAT", "QT_MAT_MASC", "QT_MAT_FEM")]  

micro_cursos_area_matriculados <- cbind(micro_cursos_area_matriculados, micro_cursos_area_distancia)

colnames(micro_cursos_area_matriculados)[5] <- 'Total de Matriculados Distancia'
colnames(micro_cursos_area_matriculados)[6] <- 'Matriculados Masculino Distancia'
colnames(micro_cursos_area_matriculados)[7] <- 'Matriculados Feminino Distancia'

micro_cursos_area_matriculados <- micro_cursos_area_matriculados[, c('Ano', 'Matriculados Masculino Presencial','Matriculados Feminino Presencial', 'Matriculados Masculino Distancia', 'Matriculados Feminino Distancia' ,'Total de Matriculados Presencial', 'Total de Matriculados Distancia')]

tab2 <- micro_cursos_area_matriculados %>%
  flextable() %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  add_header_lines(values = header_name) %>% 
  set_header_labels(NU_ANO_CENSO = "Ano")

tab2
tab2 %>% 
  save_as_image(path1, webshot = "webshot2")  
save_as_html(tab2, path = path2) # and save as html

#-------------------------------------------------------------------------------------------------------------------------

dir.create ("tables_by_area/sit_aluno/concludentes", recursive = TRUE)
path1 <- sprintf("tables_by_area/sit_aluno/concludentes/%s.png",name_area) 
path2 <- sprintf("tables_by_area/sit_aluno/concludentes/%s.html",name_area) 
header_name <- sprintf("Situação Alunos Concludentes - %s",name_area) 

micro_cursos_area_presencial <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '1'
  )

micro_cursos_area_presencial <- ddply(micro_cursos_area_presencial,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_concludentes <- micro_cursos_area_presencial[ , c("NU_ANO_CENSO","QT_CONC", "QT_CONC_MASC", "QT_CONC_FEM")]  

colnames(micro_cursos_area_concludentes)[1] <- 'Ano'
colnames(micro_cursos_area_concludentes)[2] <- 'Total de Concludentes Presencial'
colnames(micro_cursos_area_concludentes)[3] <- 'Concludentes Masculino Presencial'
colnames(micro_cursos_area_concludentes)[4] <- 'Concludentes Feminino Presencial'

micro_cursos_area_distancia <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '2'
  )

micro_cursos_area_distancia <- ddply(micro_cursos_area_distancia,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_distancia <- micro_cursos_area_distancia[ , c("QT_CONC", "QT_CONC_MASC", "QT_CONC_FEM")]  

micro_cursos_area_concludentes <- cbind(micro_cursos_area_concludentes, micro_cursos_area_distancia)

colnames(micro_cursos_area_concludentes)[5] <- 'Total de Concludentes Distancia'
colnames(micro_cursos_area_concludentes)[6] <- 'Concludentes Masculino Distancia'
colnames(micro_cursos_area_concludentes)[7] <- 'Concludentes Feminino Distancia'

micro_cursos_area_concludentes <- micro_cursos_area_concludentes[, c('Ano', 'Concludentes Masculino Presencial','Concludentes Feminino Presencial', 'Concludentes Masculino Distancia', 'Concludentes Feminino Distancia' ,'Total de Concludentes Presencial', 'Total de Concludentes Distancia')]

tab3 <- micro_cursos_area_concludentes %>%
  flextable() %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  add_header_lines(values = header_name) %>% 
  set_header_labels(NU_ANO_CENSO = "Ano")

tab3
tab3 %>% 
  save_as_image(path1, webshot = "webshot2")  
save_as_html(tab3, path = path2) # and save as html

