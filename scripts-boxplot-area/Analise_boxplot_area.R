dir.create ("boxplot_by_area/", recursive = TRUE)
path1 <- "boxplot_by_area/tab1_area_years.png"
path2 <- "boxplot_by_area/tab2_area_years.html"

micro_cursos_2015_boxplot <- micro_cursos_2015 %>%
  filter(
    CO_CINE_AREA_DETALHADA == '0612' |
    CO_CINE_AREA_DETALHADA == '0613' |
    CO_CINE_AREA_DETALHADA == '0614' |
    CO_CINE_AREA_DETALHADA == '0615' |
    CO_CINE_AREA_DETALHADA == '0616' |
    CO_CINE_AREA_DETALHADA == '0617'
)

micro_cursos_2016_boxplot <- micro_cursos_2016 %>%
  filter(
    CO_CINE_AREA_DETALHADA == '0612' |
      CO_CINE_AREA_DETALHADA == '0613' |
      CO_CINE_AREA_DETALHADA == '0614' |
      CO_CINE_AREA_DETALHADA == '0615' |
      CO_CINE_AREA_DETALHADA == '0616' |
      CO_CINE_AREA_DETALHADA == '0617'
)


micro_cursos_2017_boxplot <- micro_cursos_2017 %>%
  filter(
      CO_CINE_AREA_DETALHADA == '0612' |
      CO_CINE_AREA_DETALHADA == '0613' |
      CO_CINE_AREA_DETALHADA == '0614' |
      CO_CINE_AREA_DETALHADA == '0615' |
      CO_CINE_AREA_DETALHADA == '0616' |
      CO_CINE_AREA_DETALHADA == '0617'
)


micro_cursos_2018_boxplot <- micro_cursos_2018 %>%
  filter(
      CO_CINE_AREA_DETALHADA == '0612' |
      CO_CINE_AREA_DETALHADA == '0613' |
      CO_CINE_AREA_DETALHADA == '0614' |
      CO_CINE_AREA_DETALHADA == '0615' |
      CO_CINE_AREA_DETALHADA == '0616' |
      CO_CINE_AREA_DETALHADA == '0617'
)


micro_cursos_2019_boxplot <- micro_cursos_2019 %>%
  filter(
      CO_CINE_AREA_DETALHADA == '0612' |
      CO_CINE_AREA_DETALHADA == '0613' |
      CO_CINE_AREA_DETALHADA == '0614' |
      CO_CINE_AREA_DETALHADA == '0615' |
      CO_CINE_AREA_DETALHADA == '0616' |
      CO_CINE_AREA_DETALHADA == '0617'
)

micro_cursos_2020_boxplot <- micro_cursos_2020 %>%
  filter(
      CO_CINE_AREA_DETALHADA == '0612' |
      CO_CINE_AREA_DETALHADA == '0613' |
      CO_CINE_AREA_DETALHADA == '0614' |
      CO_CINE_AREA_DETALHADA == '0615' |
      CO_CINE_AREA_DETALHADA == '0616' |
      CO_CINE_AREA_DETALHADA == '0617'
  )

micro_cursos_2021_boxplot <- micro_cursos_2021 %>%
  filter(
      CO_CINE_AREA_DETALHADA == '0612' |
      CO_CINE_AREA_DETALHADA == '0613' |
      CO_CINE_AREA_DETALHADA == '0614' |
      CO_CINE_AREA_DETALHADA == '0615' |
      CO_CINE_AREA_DETALHADA == '0616' |
      CO_CINE_AREA_DETALHADA == '0617'
  )

micro_cursos_2015_boxplot <- ddply(micro_cursos_2015_boxplot,.(micro_cursos_2015_boxplot$CO_CINE_AREA_DETALHADA),nrow)

micro_cursos_2016_boxplot <- ddply(micro_cursos_2016_boxplot,.(micro_cursos_2016_boxplot$CO_CINE_AREA_DETALHADA),nrow) 

micro_cursos_2017_boxplot <- ddply(micro_cursos_2017_boxplot,.(micro_cursos_2017_boxplot$CO_CINE_AREA_DETALHADA),nrow) 

micro_cursos_2018_boxplot <- ddply(micro_cursos_2018_boxplot,.(micro_cursos_2018_boxplot$CO_CINE_AREA_DETALHADA),nrow)

micro_cursos_2019_boxplot <- ddply(micro_cursos_2019_boxplot,.(micro_cursos_2019_boxplot$CO_CINE_AREA_DETALHADA),nrow)

micro_cursos_2020_boxplot <- ddply(micro_cursos_2020_boxplot,.(micro_cursos_2020_boxplot$CO_CINE_AREA_DETALHADA),nrow)

micro_cursos_2021_boxplot <- ddply(micro_cursos_2021_boxplot,.(micro_cursos_2021_boxplot$CO_CINE_AREA_DETALHADA),nrow)


micro_cursos_2015_boxplot[nrow(micro_cursos_2015_boxplot) + 1,] = c("0617",0)
micro_cursos_2016_boxplot[nrow(micro_cursos_2016_boxplot) + 1,] = c("0617",0)
micro_cursos_2017_boxplot[nrow(micro_cursos_2017_boxplot) + 1,] = c("0617",0)
micro_cursos_2018_boxplot[nrow(micro_cursos_2018_boxplot) + 1,] = c("0617",0)
micro_cursos_2019_boxplot[nrow(micro_cursos_2019_boxplot) + 1,] = c("0617",0)

micro_cursos_2015_boxplot$V1 <- as.numeric(as.character(micro_cursos_2015_boxplot$V1))
micro_cursos_2016_boxplot$V1 <- as.numeric(as.character(micro_cursos_2016_boxplot$V1))
micro_cursos_2017_boxplot$V1 <- as.numeric(as.character(micro_cursos_2017_boxplot$V1))
micro_cursos_2018_boxplot$V1 <- as.numeric(as.character(micro_cursos_2018_boxplot$V1))
micro_cursos_2019_boxplot$V1 <- as.numeric(as.character(micro_cursos_2019_boxplot$V1))
micro_cursos_2020_boxplot$V1 <- as.numeric(as.character(micro_cursos_2020_boxplot$V1))
micro_cursos_2021_boxplot$V1 <- as.numeric(as.character(micro_cursos_2021_boxplot$V1))

boxplot_all <- data.frame(micro_cursos_2015_boxplot$V1, micro_cursos_2016_boxplot$V1, micro_cursos_2017_boxplot$V1, micro_cursos_2018_boxplot$V1, micro_cursos_2019_boxplot$V1, micro_cursos_2020_boxplot$V1, micro_cursos_2021_boxplot$V1)

colnames(boxplot_all)[1] <- '2015'
colnames(boxplot_all)[2] <- '2016'
colnames(boxplot_all)[3] <- '2017'
colnames(boxplot_all)[4] <- '2018'
colnames(boxplot_all)[5] <- '2019'
colnames(boxplot_all)[6] <- '2020'
colnames(boxplot_all)[7] <- '2021'


#svg(path1)
#bp <- boxplot(boxplot_all, sep = ",", col = "orange", staplewex = 1)
#bp$stats
#box()
#text(x = col(bp$stats) - .5, y = bp$stats, labels = bp$stats)
#mtext(side=2,"Áreas",line=2.2)
#dev.off()

cursos  <- c('0612 - Infraestrutura e gestão de TIC', '0613 -  Produção de software', '0614 -  Ciência da computação', '0615 - Gestão e desenvolvimento de sistemas de informação', '0616 - Desenvolvimento de sistemas que integram software e hardware', '0617 - Soluções Computacionais para Domínios Específicos')
boxplot_all <- cbind(cursos, boxplot_all)

tab <- boxplot_all %>%
  flextable() %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  add_header_lines(values = 'Quantidade de cursos em cada área')

tab
tab %>% 
  save_as_image(path1, webshot = "webshot2")  
save_as_html(tab, path = path2) # and save as html

