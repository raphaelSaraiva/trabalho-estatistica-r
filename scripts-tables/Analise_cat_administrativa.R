path1 <- sprintf("tables/%s/tab1-administrativa-%s.png",year,year) 
path2 <- sprintf("tables/%s/tab2-administrativa-%s.png",year,year) 


micro_cursos$NO_CINE_AREA_DETALHADA <- factor(micro_cursos$NO_CINE_AREA_DETALHADA)
micro_cursos$NO_CINE_ROTULO <- factor(micro_cursos$NO_CINE_ROTULO)
micro_cursos$TP_CATEGORIA_ADMINISTRATIVA <- factor(micro_cursos$TP_CATEGORIA_ADMINISTRATIVA)

micro_cursos <- micro_cursos %>% 
  apply_labels(
    NO_CINE_AREA_DETALHADA = "Área Detalhada",
    NO_CINE_ROTULO = "Rótulo",
    TP_CATEGORIA_ADMINISTRATIVA = "Categoria Administrativa"
)

tab1 <- micro_cursos %>%
  drop_na() %>%
  crosstable(NO_CINE_AREA_DETALHADA, by = TP_CATEGORIA_ADMINISTRATIVA, label = T,
             total = "both", percent_pattern = "{n} ({p_col}) ({p_row})",
  ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
  ) %>%
  set_header_labels(
    "1" = "Pública Federal",
    "2" = "Pública Estadual",
    "3" = "Privada com fins lucrativos",
    "4" = "Privada sem fins lucrativos",
    "5" = "Privada - Particular em sentido estrito",
    "6" = "Privada - Particular em sentido estrito",
    "7" = "Especial",
    "8" = "Privada comunitária",
    "9" = "Privada confessional"
  )

tab1
tab1 %>% 
  save_as_image(path1, webshot = "webshot2")  

tab2 <- micro_cursos %>%
  drop_na() %>%
  crosstable(NO_CINE_ROTULO, by = TP_CATEGORIA_ADMINISTRATIVA, label = T,
             total = "both", percent_pattern = "{n} ({p_col}) ({p_row})",
  ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
  ) %>%
  set_header_labels(
    "1" = "Pública Federal",
    "2" = "Pública Estadual",
    "3" = "Privada com fins lucrativos",
    "4" = "Privada sem fins lucrativos",
    "5" = "Privada - Particular em sentido estrito",
    "6" = "Privada - Particular em sentido estrito",
    "7" = "Especial",
    "8" = "Privada comunitária",
    "9" = "Privada confessional"
  )

tab2
tab2 %>% 
  save_as_image(path2, webshot = "webshot2")  


