### Importação do arquivo

ppgce <- read_excel("ppgce.xlsx")


### Conhecimento dos dados

## Visualização de parte das observações e suas especificações
glimpse(ppgce) 

## Resumo dos dados, incluindo estatísticas univariadas
summary(ppgce)

## Caso deseje salvar o objeto "ppgce" para uso posterior sem a
## necessidade de importá-lo de um arquivo XLSX, é possível salvá-lo
## como objeto do R e importá-lo com a função "load()".

save(ppgce, file = "ppgce.RData")


### Preparação dos dados

## Transformação de variáveis para a classe "factor"

ppgce$AN_BASE <- factor(ppgce$AN_BASE)

ppgce$SG_ENTIDADE_ENSINO <- factor(ppgce$SG_ENTIDADE_ENSINO)

ppgce$CS_STATUS_JURIDICO <- factor(ppgce$CS_STATUS_JURIDICO)

ppgce$NM_MODALIDADE_PROGRAMA <- factor(ppgce$NM_MODALIDADE_PROGRAMA)

ppgce$NM_NIVEL_PROGRAMA <- factor(ppgce$NM_NIVEL_PROGRAMA)

ppgce$NM_AREA_AVALIACAO <- factor(ppgce$NM_AREA_AVALIACAO)

ppgce$NM_SITUACAO_DISCENTE <- factor(ppgce$NM_SITUACAO_DISCENTE)

summary(ppgce)

### Tabelas

### Série temporal, cronológica, histórica, evolutiva, marcha

## Uso da função "flextable()" do pacote "flextable"

# Estabelecimento de parâmetros gerais para a função "flextable()"

set_flextable_defaults(
  font.family = "Arial",
  font.size = 10,
  font.color = "black",
  decimal.mark = ",",
  big.mark = ".",
  digits = 2
)

# Configuração das bordas mais grossas

border1 <- fp_border_default(
  color = "black",
  style = "solid",
  width = 3
  )

## Matrícula por ano

tab1 <- ppgce %>%
  select(AN_BASE, NM_SITUACAO_DISCENTE) %>%
  filter(NM_SITUACAO_DISCENTE == "MATRICULADO") %>% 
  group_by(AN_BASE) %>%
  summarise(
    AN_BASE = unique(AN_BASE),
    NM_SITUACAO_DISCENTE = length(NM_SITUACAO_DISCENTE)
  ) %>% 
  flextable() %>% 
  set_header_labels(AN_BASE = "Ano",
                    NM_SITUACAO_DISCENTE = "Matriculado") %>% 
  hline_top(j = c(1:2), border = border1, part = "header") %>% 
  hline_bottom(j = c(1:2), border = border1, part = "body")

tab1

# Exportação como imagem PNG

tab1 %>% 
  save_as_image("tab1.png", webshot = "webshot2")  

# Exportação como arquivo DOCX

tab1 %>% 
  save_as_docx(path = "tab1.docx")

### Série Geográfica, territorial, espacial, de localidade

## Matrícula por IES (2010-2012)

tab2 <- ppgce %>%
  select(SG_ENTIDADE_ENSINO, NM_SITUACAO_DISCENTE) %>%
  filter(NM_SITUACAO_DISCENTE == "MATRICULADO") %>% 
  group_by(SG_ENTIDADE_ENSINO) %>%
  summarise(
    SG_ENTIDADE_ENSINO = unique(SG_ENTIDADE_ENSINO),
    NM_SITUACAO_DISCENTE = length(NM_SITUACAO_DISCENTE)
  ) %>%
  arrange(desc(NM_SITUACAO_DISCENTE)) %>% 
  flextable() %>% 
  set_header_labels(SG_ENTIDADE_ENSINO = "IES",
                    NM_SITUACAO_DISCENTE = "Matriculado") %>% 
  hline_top(j = c(1:2), border = border1, part = "header") %>% 
  hline_bottom(j = c(1:2), border = border1, part = "body")

tab2

# Exportação como imagem PNG

tab2 %>% 
  save_as_image("tab2.png", webshot = "webshot2")  

# Exportação como arquivo DOCX

tab2 %>% 
  save_as_docx(path = "tab2.docx")

### Série Específica, categórica, por categoria

## Titulado por nível do programa (2012)

tab3 <- ppgce %>%
  select(NM_NIVEL_PROGRAMA, NM_SITUACAO_DISCENTE) %>%
  filter(AN_BASE == "2012", NM_SITUACAO_DISCENTE == "TITULADO") %>%
  group_by(NM_NIVEL_PROGRAMA) %>%
  summarise(
    NM_NIVEL_PROGRAMA = unique(NM_NIVEL_PROGRAMA),
    NM_SITUACAO_DISCENTE = length(NM_SITUACAO_DISCENTE)
  ) %>% 
  arrange(desc(NM_SITUACAO_DISCENTE)) %>%
  flextable() %>% 
  set_header_labels(NM_NIVEL_PROGRAMA = "Nível",
                    NM_SITUACAO_DISCENTE = "Titulado") %>% 
  hline_top(j = c(1:2), border = border1, part = "header") %>% 
  hline_bottom(j = c(1:2), border = border1, part = "body")
  
tab3

# Exportação como imagem PNG

tab3 %>% 
  save_as_image("tab3.png", webshot = "webshot2")  

# Exportação como arquivo DOCX

tab3 %>% 
  save_as_docx(path = "tab3.docx")


### Tabela de dupla entrada

## Mudança do nome das variáveis

ppgce <- ppgce %>% 
  apply_labels(
    AN_BASE = "Ano",
    NM_SITUACAO_DISCENTE = "Situação Discente",
    SG_ENTIDADE_ENSINO = "IES"
  )

## Uso da função "crosstable()" do pacote "crosstable"

## Ano x IES (somente SG_ENTIDADE_ENSINO == "TITULADO")

tab4 <- ppgce %>%
  filter(NM_SITUACAO_DISCENTE == "TITULADO") %>%
  crosstable(AN_BASE, by = SG_ENTIDADE_ENSINO, label = T,
           total = "both", percent_pattern = "{n} ({p_col}) ({p_row})",
           ) %>%
  as_flextable(keep_id = F, compact = T, autofit = F,
               fontsizes = list(body = 10, subheaders = 10, header = 10)
               )

tab4

# Exportação como imagem PNG

tab4 %>% 
  save_as_image("tab4.png", webshot = "webshot2")  

# Exportação como arquivo DOCX

tab4 %>% 
  save_as_docx(path = "tab4.docx")

    
### Distribuição de frequência


# Verificação se há valores ausentes para a variável "NR_IDADE_DISCENTE"

table(is.na(ppgce$NR_IDADE_DISCENTE))


## Distribuição de frequência por valor


## Uso da função "freqdist()" do pacote "freqdist"

tab5 <- freqdist(ppgce$NR_IDADE_DISCENTE) %>%
  rownames_to_column() %>%
  as_tibble() %>% 
  flextable() %>% 
  set_header_labels(rowname = "Idade",
                    frequencies = "Frequência",
                    percentage = "Frequência percentual",
                    cumulativepercentage = "Frequência percentual acumulada") %>%
  hline_top(j = c(1:4), border = border1, part = "header") %>% 
  hline_bottom(j = c(1:4), border = border1, part = "body") %>% 
  colformat_double(
    j = c(3:4),
    digits = 2)

tab5

# Exportação como imagem PNG

tab5 %>% 
  save_as_image("tab5.png", webshot = "webshot2")  

# Exportação como arquivo DOCX

tab5 %>% 
  save_as_docx(path = "tab5.docx")


## Distribuição de frequência por classe

## Uso da função "fdt()" do pacote "fdth"

# Definição das classes pelo algoritmo com base em Sturges

tab6 <- fdt(ppgce$NR_IDADE_DISCENTE,
            breaks = c("Sturges"),
            na.rm = T) 
  
tab6

# Definição das classes com base nos valores de início (start) e final (end)

tab6 <- fdt(ppgce$NR_IDADE_DISCENTE,
            start = 15,
            end = 76,
            na.rm = T)

tab6

# Definição das classes com base no número de classes (k)

tab6 <- fdt(ppgce$NR_IDADE_DISCENTE,
            k = 15,
            na.rm = T)

tab6

# Definição das classes com base no tamanho do intervalo de classe

tab6 <- fdt(ppgce$NR_IDADE_DISCENTE,
            h = 5,
            start = 15,
            end = 80,
            na.rm = T)

tab6

# Tranformação para a classe "data.frame"

class(tab6)

tab7 <- print.fdt.default(tab6)

class(tab7)

# Formatação da tabela com a função "flextable()"

tab8 <- tab7 %>% 
  flextable() %>% 
  set_header_labels('Class limits' = "Limites de classe",
                    rf = "fr",
                    'rf(%)' = "fr%",
                    cf = "Fac",
                    'cf(%)' = "Fac%") %>%
  hline_top(j = c(1:6), border = border1, part = "header") %>% 
  hline_bottom(j = c(1:6), border = border1, part = "body")

tab8

# Exportação como imagem PNG

tab8 %>% 
  save_as_image("tab8.png", webshot = "webshot2")  

# Exportação como arquivo DOCX

tab8 %>% 
  save_as_docx(path = "tab8.docx")
