
dir.create ("tables_by_area/região/P+D", recursive = TRUE)
path1 <- sprintf("tables_by_area/região/P+D/%s.png",name_area) 
path2 <- sprintf("tables_by_area/região/P+D/%s.html",name_area) 

micro_cursos_area$NO_CINE_AREA_DETALHADA <- factor(micro_cursos_area$NO_CINE_AREA_DETALHADA)
micro_cursos_area$NU_ANO_CENSO <- factor(micro_cursos_area$NU_ANO_CENSO)
micro_cursos_area$NO_REGIAO <- factor(micro_cursos_area$NO_REGIAO)

micro_cursos_area <- micro_cursos_area %>% 
  apply_labels(
    NO_CINE_AREA_DETALHADA = "Área Detalhada",
    NU_ANO_CENSO = micro_cursos_area$NO_CINE_AREA_DETALHADA,
    NO_REGIAO = "Região"
  )

tab1 <- micro_cursos_area %>%
  crosstable(NO_REGIAO, by = NU_ANO_CENSO, label = T,
             total = "both", percent_pattern = "{n}",
  ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
  )

tab1
tab1 %>% 
  save_as_image(path1, webshot = "webshot2")  

save_as_html(tab1, path = path2) # and save as html

#---------------------------------------------------------------------------------------------------

dir.create ("tables_by_area/região/P", recursive = TRUE)
path1 <- sprintf("tables_by_area/região/P/%s.png",name_area) 
path2 <- sprintf("tables_by_area/região/P/%s.html",name_area) 

micro_cursos_area_presencial <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '1'
  )

micro_cursos_area_presencial$NO_CINE_AREA_DETALHADA <- factor(micro_cursos_area_presencial$NO_CINE_AREA_DETALHADA)
micro_cursos_area_presencial$NU_ANO_CENSO <- factor(micro_cursos_area_presencial$NU_ANO_CENSO)
micro_cursos_area_presencial$NO_REGIAO <- factor(micro_cursos_area_presencial$NO_REGIAO)

micro_cursos_area_presencial <- micro_cursos_area_presencial %>% 
  apply_labels(
    NO_CINE_AREA_DETALHADA = "Área Detalhada",
    NU_ANO_CENSO = micro_cursos_area_presencial$NO_CINE_AREA_DETALHADA,
    NO_REGIAO = "Região"
  )

tab2 <- micro_cursos_area_presencial %>%
  crosstable(NO_REGIAO, by = NU_ANO_CENSO, label = T,
             total = "both", percent_pattern = "{n}",
  ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
  )

tab2
tab2 %>% 
  save_as_image(path1, webshot = "webshot2")  

save_as_html(tab2, path = path2) # and save as html

#---------------------------------------------------------------------------------------------------

dir.create ("tables_by_area/região/D", recursive = TRUE)
path1 <- sprintf("tables_by_area/região/D/%s.png",name_area) 
path2 <- sprintf("tables_by_area/região/D/%s.html",name_area) 

micro_cursos_area_distancia <- micro_cursos_area %>%
  filter(
    TP_MODALIDADE_ENSINO == '2'
  )

micro_cursos_area_distancia$NO_CINE_AREA_DETALHADA <- factor(micro_cursos_area_distancia$NO_CINE_AREA_DETALHADA)
micro_cursos_area_distancia$NU_ANO_CENSO <- factor(micro_cursos_area_distancia$NU_ANO_CENSO)
micro_cursos_area_distancia$NO_REGIAO <- factor(micro_cursos_area_distancia$NO_REGIAO)

micro_cursos_area_distancia <- micro_cursos_area_distancia %>% 
  apply_labels(
    NO_CINE_AREA_DETALHADA = "Área Detalhada",
    NU_ANO_CENSO = micro_cursos_area_distancia$NO_CINE_AREA_DETALHADA,
    NO_REGIAO = "Região"
  )

tab3 <- micro_cursos_area_distancia %>%
  crosstable(NO_REGIAO, by = NU_ANO_CENSO, label = T,
             total = "both", percent_pattern = "{n}",
  ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
  )

tab3
tab3 %>% 
  save_as_image(path1, webshot = "webshot2")  

save_as_html(tab3, path = path2) # and save as html

