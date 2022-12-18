dir.create ("tables_barplot/2021", recursive = TRUE)

micro_cursos_2021_org <- ddply(micro_cursos_2021_barplot,.(micro_cursos_2021$TP_ORGANIZACAO_ACADEMICA),nrow) %>%
  drop_na()
micro_cursos_2021_org$Percentage <- 100 * micro_cursos_2021_org$V1/sum(micro_cursos_2021_org$V1)

path <- sprintf("tables_barplot/2021/%s.png","organização") 

micro_cursos_2021_org_flex <- df2flextable(micro_cursos_2021_org)
micro_cursos_2021_org_flex %>% 
  save_as_image(path, webshot = "webshot2")  


#---------------

micro_cursos_2021_cat <- ddply(micro_cursos_2021_barplot,.(micro_cursos_2021$TP_CATEGORIA_ADMINISTRATIVA),nrow) %>%
  drop_na()
micro_cursos_2021_cat$Percentage <- 100 * micro_cursos_2021_cat$V1/sum(micro_cursos_2021_cat$V1)

path <- sprintf("tables_barplot/2021/%s.png","categoria") 

micro_cursos_2021_cat_flex <- df2flextable(micro_cursos_2021_cat)
micro_cursos_2021_cat_flex %>% 
  save_as_image(path, webshot = "webshot2")  

#---------------

micro_cursos_2021_mod <- ddply(micro_cursos_2021_barplot,.(micro_cursos_2021$TP_MODALIDADE_ENSINO),nrow) %>%
  drop_na()
micro_cursos_2021_mod$Percentage <- 100 * micro_cursos_2021_mod$V1/sum(micro_cursos_2021_mod$V1)

path <- sprintf("tables_barplot/2021/%s.png","modalidade") 

micro_cursos_2021_mod_flex <- df2flextable(micro_cursos_2021_mod)
micro_cursos_2021_mod_flex %>% 
  save_as_image(path, webshot = "webshot2")  

#---------------


barplot_all <- qpcR:::cbind.na(micro_cursos_2021_org$Percentage, micro_cursos_2021_cat$Percentage, micro_cursos_2021_mod$Percentage)


colnames(barplot_all)[1] <- 'Organização'
colnames(barplot_all)[2] <- 'Categoria'
colnames(barplot_all)[3] <- 'Modalidade'


barplot(as.matrix(barplot_all),
        main="Gráfico Geral", 
        beside=FALSE, 
        horiz=TRUE,
        col = c("blue", "green", "yellow", "red", "orange")
)

