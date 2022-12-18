path1 <- sprintf("tables/%s/tab1-regiao-%s.png",year,year) 
path2 <- sprintf("tables/%s/tab2-regiao-%s.png",year,year) 


micro_cursos$NO_CINE_AREA_DETALHADA <- factor(micro_cursos$NO_CINE_AREA_DETALHADA)
micro_cursos$NO_CINE_ROTULO <- factor(micro_cursos$NO_CINE_ROTULO)
micro_cursos$NO_REGIAO <- factor(micro_cursos$NO_REGIAO)



micro_cursos <- micro_cursos %>% 
  apply_labels(
    NO_CINE_AREA_DETALHADA = "Área Detalhada",
    NO_CINE_ROTULO = "Rótulo",
    NO_REGIAO = "Região"
  )

tab1 <- micro_cursos %>%
  drop_na() %>%
  crosstable(NO_CINE_AREA_DETALHADA, by = NO_REGIAO, label = T,
             total = "both", percent_pattern = "{n} ({p_col}) ({p_row})",
  ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
  )

tab1
tab1 %>% 
  save_as_image(path1, webshot = "webshot2")  

tab2 <- micro_cursos %>%
  drop_na() %>%
  crosstable(NO_CINE_ROTULO, by = NO_REGIAO, label = T,
             total = "both", percent_pattern = "{n} ({p_col}) ({p_row})",
  ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
  )

tab2
tab2 %>% 
  save_as_image(path2, webshot = "webshot2")  


