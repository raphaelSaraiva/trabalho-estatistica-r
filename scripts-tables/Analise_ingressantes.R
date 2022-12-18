path1 <- sprintf("tables/%s/tab1-ingressantes-%s.png",year,year) 
path2 <- sprintf("tables/%s/tab2-ingressantes-%s.png",year,year) 

tab1 <- micro_cursos %>%
  drop_na() %>%
  group_by(NO_CINE_AREA_DETALHADA) %>%
  add_header_lines(values = "Situação Alunos") %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  summarise(
    QT_MAT_MASC = sum(QT_MAT_MASC),
    QT_MAT_FEM = sum(QT_MAT_FEM),
    QT_ING_MASC = sum(QT_ING_MASC),
    QT_ING_FEM = sum(QT_ING_FEM),
    QT_CONC_MASC = sum(QT_CONC_MASC),
    QT_CONC_FEM = sum(QT_CONC_FEM)
  ) %>% 
  flextable() %>% 
  set_header_labels(NO_CINE_AREA_DETALHADA = "Área",
                    QT_MAT_MASC = "Matrículas Masculinas",
                    QT_MAT_FEM = "Matrículas Femininas",
                    QT_ING_MASC = "Ingresso Masculino",
                    QT_ING_FEM = "Ingresso Feminino",
                    QT_CONC_MASC = "Conclusão Masculino",
                    QT_CONC_FEM = "Conclusão Feminino")
tab1
tab1 %>% 
  save_as_image(path1, webshot = "webshot2")  


tab2 <- micro_cursos %>%
  drop_na() %>%
  group_by(NO_CINE_ROTULO) %>%
  add_header_lines(values = "Situação Alunos") %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  summarise(
    QT_MAT_MASC = sum(QT_MAT_MASC),
    QT_MAT_FEM = sum(QT_MAT_FEM),
    QT_ING_MASC = sum(QT_ING_MASC),
    QT_ING_FEM = sum(QT_ING_FEM),
    QT_CONC_MASC = sum(QT_CONC_MASC),
    QT_CONC_FEM = sum(QT_CONC_FEM)
  ) %>% 
  flextable() %>% 
  set_header_labels(NO_CINE_ROTULO = "Rotulo",
                    QT_MAT_MASC = "Matrículas Masculinas",
                    QT_MAT_FEM = "Matrículas Femininas",
                    QT_ING_MASC = "Ingressantes Masculinos",
                    QT_ING_FEM = "Ingressantes Femininos",
                    QT_CONC_MASC = "Concludentes Masculinos",
                    QT_CONC_FEM = "Concludentes Femininos")
tab2
tab2 %>% 
  save_as_image(path2, webshot = "webshot2")  

