path1 <- sprintf("tables/%s/tab1-matricula-%s.png",year,year) 
path2 <- sprintf("tables/%s/tab2-matricula-%s.png",year,year) 

tab1 <- micro_cursos %>%
  drop_na() %>%
  group_by(NO_CINE_AREA_DETALHADA) %>%
  summarise(
    QT_SIT_TRANCADA = sum(QT_SIT_TRANCADA),
    QT_SIT_DESVINCULADO = sum(QT_SIT_DESVINCULADO),
    QT_SIT_TRANSFERIDO = sum(QT_SIT_TRANSFERIDO),
    QT_SIT_FALECIDO = sum(QT_SIT_FALECIDO)
  ) %>% 
  flextable() %>% 
  set_header_labels(NO_CINE_AREA_DETALHADA = "Área",
                    QT_SIT_TRANCADA = "Trancado",
                    QT_SIT_DESVINCULADO = "Desvinculado",
                    QT_SIT_TRANSFERIDO = "Transferido",
                    QT_SIT_FALECIDO = "Falecido")
tab1
tab1 %>% 
  save_as_image(path1, webshot = "webshot2")  




tab2 <- micro_cursos %>%
  drop_na() %>%
  group_by(NO_CINE_ROTULO) %>%
  summarise(
    QT_SIT_TRANCADA = sum(QT_SIT_TRANCADA),
    QT_SIT_DESVINCULADO = sum(QT_SIT_DESVINCULADO),
    QT_SIT_TRANSFERIDO = sum(QT_SIT_TRANSFERIDO),
    QT_SIT_FALECIDO = sum(QT_SIT_FALECIDO)
  ) %>% 
  flextable() %>% 
  set_header_labels(NO_CINE_ROTULO = "Rotulo",
                    QT_SIT_TRANCADA = "Trancado",
                    QT_SIT_DESVINCULADO = "Desvinculado",
                    QT_SIT_TRANSFERIDO = "Transferido",
                    QT_SIT_FALECIDO = "Falecido")
tab2
tab2 %>% 
  save_as_image(path2, webshot = "webshot2")  

