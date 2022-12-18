micro_cursos_area$NO_CINE_AREA_DETALHADA <- factor(micro_cursos_area$NO_CINE_AREA_DETALHADA)
micro_cursos_area$NU_ANO_CENSO <- factor(micro_cursos_area$NU_ANO_CENSO)

dir.create ("tables_by_area/matricula", recursive = TRUE)
path1 <- sprintf("tables_by_area/matricula/%s.png",name_area) 
path2 <- sprintf("tables_by_area/matricula/%s.html",name_area) 
header_name <- sprintf("Matriculas - %s",name_area) 

micro_cursos_area_presencial <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '1'
  )


micro_cursos_area_presencial <- ddply(micro_cursos_area_presencial,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_matriculados <- micro_cursos_area_presencial[ , c("NU_ANO_CENSO","QT_SIT_TRANCADA", "QT_SIT_DESVINCULADO", "QT_SIT_TRANSFERIDO", "QT_SIT_FALECIDO")]  

colnames(micro_cursos_area_matriculados)[1] <- 'Ano'
colnames(micro_cursos_area_matriculados)[2] <- 'Presencial Trancados'
colnames(micro_cursos_area_matriculados)[3] <- 'Presencial Desvinculadas'
colnames(micro_cursos_area_matriculados)[4] <- 'Presencial Transferidos'
colnames(micro_cursos_area_matriculados)[5] <- 'Presencial Falecidos'

micro_cursos_area_distancia <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '2'
)

micro_cursos_area_distancia <- ddply(micro_cursos_area_distancia,"NU_ANO_CENSO", na.rm=TRUE, numcolwise(sum))
micro_cursos_area_distancia <- micro_cursos_area_distancia[ , c("QT_SIT_TRANCADA", "QT_SIT_DESVINCULADO", "QT_SIT_TRANSFERIDO", "QT_SIT_FALECIDO")]  
micro_cursos_area_matriculados <- cbind(micro_cursos_area_matriculados, micro_cursos_area_distancia)

colnames(micro_cursos_area_matriculados)[6] <- 'Distância Trancados'
colnames(micro_cursos_area_matriculados)[7] <- 'Distância Desvinculadas'
colnames(micro_cursos_area_matriculados)[8] <- 'Distância Transferidos'
colnames(micro_cursos_area_matriculados)[9] <- 'Distância Falecidos'

tab_mat <- micro_cursos_area_matriculados %>%
  flextable() %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  add_header_lines(values = header_name) %>% 
  set_header_labels(NU_ANO_CENSO = "Ano")

tab_mat
tab_mat %>% 
  save_as_image(path1, webshot = "webshot2")  

save_as_html(tab_mat, path = path2) # and save as html
