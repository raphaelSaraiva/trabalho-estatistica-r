dir.create ("boxplot_by_area/", recursive = TRUE)
path1 <- "boxplot_by_area/tab1_rotulo_years.png"
path2 <- "boxplot_by_area/tab2_rotulo_years.html"

insertRow <- function(existingDF, newrow, r) {
  existingDF[seq(r+1,nrow(existingDF)+1),] <- existingDF[seq(r,nrow(existingDF)),]
  existingDF[r,] <- newrow
  existingDF
}

micro_cursos_2015_boxplot <- micro_cursos_2015 %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
      CO_CINE_ROTULO == '"0612D01"' |
      CO_CINE_ROTULO == '"0612G01"' |
      CO_CINE_ROTULO == '"0612R01"' |
      CO_CINE_ROTULO == '"0613E01"' |
      CO_CINE_ROTULO == '"0613J01"' |
      CO_CINE_ROTULO == '"0614C01"' |
      CO_CINE_ROTULO == '"0614I01"' |
      CO_CINE_ROTULO == '"0615S01"' |
      CO_CINE_ROTULO == '"0615S02"' |
      CO_CINE_ROTULO == '"0615S03"' |
      CO_CINE_ROTULO == '"0616E01"' |
      CO_CINE_ROTULO == '"0616S01"' |
      CO_CINE_ROTULO == '"0616I01"' |
      CO_CINE_ROTULO == '"0617A01"' |
      CO_CINE_ROTULO == '"0617C01"' |
      CO_CINE_ROTULO == '"0617C02"' |
      CO_CINE_ROTULO == '"0617C03"'
  )

micro_cursos_2016_boxplot <- micro_cursos_2016 %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
      CO_CINE_ROTULO == '"0612D01"' |
      CO_CINE_ROTULO == '"0612G01"' |
      CO_CINE_ROTULO == '"0612R01"' |
      CO_CINE_ROTULO == '"0613E01"' |
      CO_CINE_ROTULO == '"0613J01"' |
      CO_CINE_ROTULO == '"0614C01"' |
      CO_CINE_ROTULO == '"0614I01"' |
      CO_CINE_ROTULO == '"0615S01"' |
      CO_CINE_ROTULO == '"0615S02"' |
      CO_CINE_ROTULO == '"0615S03"' |
      CO_CINE_ROTULO == '"0616E01"' |
      CO_CINE_ROTULO == '"0616S01"' |
      CO_CINE_ROTULO == '"0616I01"' |
      CO_CINE_ROTULO == '"0617A01"' |
      CO_CINE_ROTULO == '"0617C01"' |
      CO_CINE_ROTULO == '"0617C02"' |
      CO_CINE_ROTULO == '"0617C03"'
  )


micro_cursos_2017_boxplot <- micro_cursos_2017 %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
      CO_CINE_ROTULO == '"0612D01"' |
      CO_CINE_ROTULO == '"0612G01"' |
      CO_CINE_ROTULO == '"0612R01"' |
      CO_CINE_ROTULO == '"0613E01"' |
      CO_CINE_ROTULO == '"0613J01"' |
      CO_CINE_ROTULO == '"0614C01"' |
      CO_CINE_ROTULO == '"0614I01"' |
      CO_CINE_ROTULO == '"0615S01"' |
      CO_CINE_ROTULO == '"0615S02"' |
      CO_CINE_ROTULO == '"0615S03"' |
      CO_CINE_ROTULO == '"0616E01"' |
      CO_CINE_ROTULO == '"0616S01"' |
      CO_CINE_ROTULO == '"0616I01"' |
      CO_CINE_ROTULO == '"0617A01"' |
      CO_CINE_ROTULO == '"0617C01"' |
      CO_CINE_ROTULO == '"0617C02"' |
      CO_CINE_ROTULO == '"0617C03"'
  )


micro_cursos_2018_boxplot <- micro_cursos_2018 %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
      CO_CINE_ROTULO == '"0612D01"' |
      CO_CINE_ROTULO == '"0612G01"' |
      CO_CINE_ROTULO == '"0612R01"' |
      CO_CINE_ROTULO == '"0613E01"' |
      CO_CINE_ROTULO == '"0613J01"' |
      CO_CINE_ROTULO == '"0614C01"' |
      CO_CINE_ROTULO == '"0614I01"' |
      CO_CINE_ROTULO == '"0615S01"' |
      CO_CINE_ROTULO == '"0615S02"' |
      CO_CINE_ROTULO == '"0615S03"' |
      CO_CINE_ROTULO == '"0616E01"' |
      CO_CINE_ROTULO == '"0616S01"' |
      CO_CINE_ROTULO == '"0616I01"' |
      CO_CINE_ROTULO == '"0617A01"' |
      CO_CINE_ROTULO == '"0617C01"' |
      CO_CINE_ROTULO == '"0617C02"' |
      CO_CINE_ROTULO == '"0617C03"'
  )


micro_cursos_2019_boxplot <- micro_cursos_2019 %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
      CO_CINE_ROTULO == '"0612D01"' |
      CO_CINE_ROTULO == '"0612G01"' |
      CO_CINE_ROTULO == '"0612R01"' |
      CO_CINE_ROTULO == '"0613E01"' |
      CO_CINE_ROTULO == '"0613J01"' |
      CO_CINE_ROTULO == '"0614C01"' |
      CO_CINE_ROTULO == '"0614I01"' |
      CO_CINE_ROTULO == '"0615S01"' |
      CO_CINE_ROTULO == '"0615S02"' |
      CO_CINE_ROTULO == '"0615S03"' |
      CO_CINE_ROTULO == '"0616E01"' |
      CO_CINE_ROTULO == '"0616S01"' |
      CO_CINE_ROTULO == '"0616I01"' |
      CO_CINE_ROTULO == '"0617A01"' |
      CO_CINE_ROTULO == '"0617C01"' |
      CO_CINE_ROTULO == '"0617C02"' |
      CO_CINE_ROTULO == '"0617C03"'
  )

micro_cursos_2020_boxplot <- micro_cursos_2020 %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
      CO_CINE_ROTULO == '"0612D01"' |
      CO_CINE_ROTULO == '"0612G01"' |
      CO_CINE_ROTULO == '"0612R01"' |
      CO_CINE_ROTULO == '"0613E01"' |
      CO_CINE_ROTULO == '"0613J01"' |
      CO_CINE_ROTULO == '"0614C01"' |
      CO_CINE_ROTULO == '"0614I01"' |
      CO_CINE_ROTULO == '"0615S01"' |
      CO_CINE_ROTULO == '"0615S02"' |
      CO_CINE_ROTULO == '"0615S03"' |
      CO_CINE_ROTULO == '"0616E01"' |
      CO_CINE_ROTULO == '"0616S01"' |
      CO_CINE_ROTULO == '"0616I01"' |
      CO_CINE_ROTULO == '"0617A01"' |
      CO_CINE_ROTULO == '"0617C01"' |
      CO_CINE_ROTULO == '"0617C02"' |
      CO_CINE_ROTULO == '"0617C03"'
  )

micro_cursos_2021_boxplot <- micro_cursos_2021 %>%
  filter(
    CO_CINE_ROTULO == '"0612B01"' |
      CO_CINE_ROTULO == '"0612D01"' |
      CO_CINE_ROTULO == '"0612G01"' |
      CO_CINE_ROTULO == '"0612R01"' |
      CO_CINE_ROTULO == '"0613E01"' |
      CO_CINE_ROTULO == '"0613J01"' |
      CO_CINE_ROTULO == '"0614C01"' |
      CO_CINE_ROTULO == '"0614I01"' |
      CO_CINE_ROTULO == '"0615S01"' |
      CO_CINE_ROTULO == '"0615S02"' |
      CO_CINE_ROTULO == '"0615S03"' |
      CO_CINE_ROTULO == '"0616E01"' |
      CO_CINE_ROTULO == '"0616S01"' |
      CO_CINE_ROTULO == '"0616I01"' |
      CO_CINE_ROTULO == '"0617A01"' |
      CO_CINE_ROTULO == '"0617C01"' |
      CO_CINE_ROTULO == '"0617C02"' |
      CO_CINE_ROTULO == '"0617C03"'
  )

micro_cursos_2015_boxplot <- ddply(micro_cursos_2015_boxplot,.(micro_cursos_2015_boxplot$CO_CINE_ROTULO),nrow)

micro_cursos_2015_boxplot <- insertRow(micro_cursos_2015_boxplot, c('"0612D01"',0), 2)
micro_cursos_2015_boxplot <- insertRow(micro_cursos_2015_boxplot, c('"0614I01"',0), 8)
micro_cursos_2015_boxplot <- insertRow(micro_cursos_2015_boxplot, c('"0616I01"',0), 13)

micro_cursos_2015_boxplot[nrow(micro_cursos_2015_boxplot) + 1,] = c('"0617A01"',0)
micro_cursos_2015_boxplot[nrow(micro_cursos_2015_boxplot) + 1,] = c('"0617C01"',0)
micro_cursos_2015_boxplot[nrow(micro_cursos_2015_boxplot) + 1,] = c('"0617C02"',0)
micro_cursos_2015_boxplot[nrow(micro_cursos_2015_boxplot) + 1,] = c('"0617C03"',0)


micro_cursos_2016_boxplot <- ddply(micro_cursos_2016_boxplot,.(micro_cursos_2016_boxplot$CO_CINE_ROTULO),nrow) 

micro_cursos_2016_boxplot <- insertRow(micro_cursos_2016_boxplot, c('"0612D01"',0), 2)
micro_cursos_2016_boxplot <- insertRow(micro_cursos_2016_boxplot, c('"0614I01"',0), 8)
micro_cursos_2016_boxplot <- insertRow(micro_cursos_2016_boxplot, c('"0616I01"',0), 13)

micro_cursos_2016_boxplot[nrow(micro_cursos_2016_boxplot) + 1,] = c('"0617A01"',0)
micro_cursos_2016_boxplot[nrow(micro_cursos_2016_boxplot) + 1,] = c('"0617C01"',0)
micro_cursos_2016_boxplot[nrow(micro_cursos_2016_boxplot) + 1,] = c('"0617C02"',0)
micro_cursos_2016_boxplot[nrow(micro_cursos_2016_boxplot) + 1,] = c('"0617C03"',0)

micro_cursos_2017_boxplot <- ddply(micro_cursos_2017_boxplot,.(micro_cursos_2017_boxplot$CO_CINE_ROTULO),nrow) 

micro_cursos_2017_boxplot <- insertRow(micro_cursos_2017_boxplot, c('"0612D01"',0), 2)
micro_cursos_2017_boxplot <- insertRow(micro_cursos_2017_boxplot, c('"0614I01"',0), 8)
micro_cursos_2017_boxplot <- insertRow(micro_cursos_2017_boxplot, c('"0616I01"',0), 13)

micro_cursos_2017_boxplot[nrow(micro_cursos_2017_boxplot) + 1,] = c('"0617A01"',0)
micro_cursos_2017_boxplot[nrow(micro_cursos_2017_boxplot) + 1,] = c('"0617C01"',0)
micro_cursos_2017_boxplot[nrow(micro_cursos_2017_boxplot) + 1,] = c('"0617C02"',0)
micro_cursos_2017_boxplot[nrow(micro_cursos_2017_boxplot) + 1,] = c('"0617C03"',0)

micro_cursos_2018_boxplot <- ddply(micro_cursos_2018_boxplot,.(micro_cursos_2018_boxplot$CO_CINE_ROTULO),nrow)

micro_cursos_2018_boxplot <- insertRow(micro_cursos_2018_boxplot, c('"0614I01"',0), 8)
micro_cursos_2018_boxplot <- insertRow(micro_cursos_2018_boxplot, c('"0616I01"',0), 13)

micro_cursos_2018_boxplot[nrow(micro_cursos_2018_boxplot) + 1,] = c('"0617A01"',0)
micro_cursos_2018_boxplot[nrow(micro_cursos_2018_boxplot) + 1,] = c('"0617C01"',0)
micro_cursos_2018_boxplot[nrow(micro_cursos_2018_boxplot) + 1,] = c('"0617C02"',0)
micro_cursos_2018_boxplot[nrow(micro_cursos_2018_boxplot) + 1,] = c('"0617C03"',0)

micro_cursos_2019_boxplot <- ddply(micro_cursos_2019_boxplot,.(micro_cursos_2019_boxplot$CO_CINE_ROTULO),nrow)

micro_cursos_2019_boxplot <- insertRow(micro_cursos_2019_boxplot, c('"0614I01"',0), 8)
micro_cursos_2019_boxplot <- insertRow(micro_cursos_2019_boxplot, c('"0616I01"',0), 13)

micro_cursos_2019_boxplot[nrow(micro_cursos_2019_boxplot) + 1,] = c('"0617A01"',0)
micro_cursos_2019_boxplot[nrow(micro_cursos_2019_boxplot) + 1,] = c('"0617C01"',0)
micro_cursos_2019_boxplot[nrow(micro_cursos_2019_boxplot) + 1,] = c('"0617C02"',0)
micro_cursos_2019_boxplot[nrow(micro_cursos_2019_boxplot) + 1,] = c('"0617C03"',0)


micro_cursos_2020_boxplot <- ddply(micro_cursos_2020_boxplot,.(micro_cursos_2020_boxplot$CO_CINE_ROTULO),nrow)

micro_cursos_2021_boxplot <- ddply(micro_cursos_2021_boxplot,.(micro_cursos_2021_boxplot$CO_CINE_ROTULO),nrow)



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

cursos  <- c('0612B01 - Banco de dados', 
             '0612D01 - Defesa cibernética', 
             '0612G01 - Gestão da tecnologia da informação', 
             '0612R01 - Redes de computadores', 
             '0613E01 - Engenharia de software', 
             '0613J01 - Jogos digitais',
             '0614C01 - Ciência da computação',
             '0614I01 - Inteligência artificial',
             '0615S01 - Segurança da informação',
             '0615S02 - Sistemas de informação',
             '0615S03 - Sistemas para internet',
             '0616E01 - Engenharia de computação',
             '0616S01 - Sistemas embarcados',
             '0616I01 - Internet das coisas',
             '0617A01 - Agrocomputação',
             '0617C01 - Ciência de dados',
             '0617C02 - Computação e Tecnologias da Informação e Comunicação',
             '0617C03 - Criação digital'
             )
boxplot_all <- cbind(cursos, boxplot_all)

tab <- boxplot_all %>%
  flextable() %>% 
  colformat_double(big.mark = "", digits = 0) %>%
  add_header_lines(values = 'Quantidade de cursos por rotulo')

tab
tab %>% 
  save_as_image(path1, webshot = "webshot2")  
save_as_html(tab, path = path2) # and save as html

