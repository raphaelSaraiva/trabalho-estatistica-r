path1 <- sprintf("tables/%s/tab1-turno-%s.png",year,year) 
path2 <- sprintf("tables/%s/tab2-turno-%s.png",year,year) 

tab1 <- micro_cursos %>%
  drop_na() %>%
  group_by(NO_CINE_AREA_DETALHADA) %>%
  summarise(
    QT_INSCRITO_TOTAL_DIURNO = sum(QT_INSCRITO_TOTAL_DIURNO),
    QT_INSCRITO_TOTAL_NOTURNO = sum(QT_INSCRITO_TOTAL_NOTURNO),
    QT_INSCRITO_TOTAL = sum(QT_INSCRITO_TOTAL)
  ) %>% 
  flextable() %>% 
  set_header_labels(NO_CINE_AREA_DETALHADA = "Área",
                    QT_INSCRITO_TOTAL = "Total",
                    QT_INSCRITO_TOTAL_DIURNO = "Diurno",
                    QT_INSCRITO_TOTAL_NOTURNO = "Noturno")
tab1
tab1 %>% 
  save_as_image(path1, webshot = "webshot2")  

tab2 <- micro_cursos %>%
  drop_na() %>%
  group_by(NO_CINE_ROTULO) %>%
  summarise(
    QT_INSCRITO_TOTAL_DIURNO = sum(QT_INSCRITO_TOTAL_DIURNO),
    QT_INSCRITO_TOTAL_NOTURNO = sum(QT_INSCRITO_TOTAL_NOTURNO),
    QT_INSCRITO_TOTAL = sum(QT_INSCRITO_TOTAL)
  ) %>% 
  flextable() %>% 
  set_header_labels(NO_CINE_ROTULO = "Rotulo",
                    QT_INSCRITO_TOTAL = "Total",
                    QT_INSCRITO_TOTAL_DIURNO = "Diurno",
                    QT_INSCRITO_TOTAL_NOTURNO = "Noturno")
tab2
tab2 %>% 
  save_as_image(path2, webshot = "webshot2")  
