
Projeto com scripts para geração dos dados utilizados no artigo: 
Análise descritiva dos Microdados do Censo da Educação Superior do Inep para cursos de Tecnologia da Informação e Comunicação no Brasil - Um panorama 2015-2021

## Pré-requisitos

Como pré-requisito para execução dos script e geração dos resultados é necessario as seguintes feramentas:

1. R (Compilador)
2. R-Studio (IDE)

OBS: Após o R-Studio instalado, é possivel abrir o projeto utilizando executável: run_projeto.Rproj


### Scripts Iniciais

Primeiramente, é necessario a execução dos seguintes scripts em ordem:

1. Instalacao_de_pacotes.R
2. Preparacao_dados_tabelas.R

Estes são responsaveis pelo carregamento dos pacotes que seão utilizados no R (1) e também realizam a organização dos datasets que serão utilizados pelos demais scripts (2).

## Datasets

Na pasta pasta datasets estão presentes todos os datasets utilizados pelos scripts, possuindo as seguintes subpastas:

1. INEP
2. CSV
3. R

A primeira subpasta INEP possui os microdados em csv coletados do site do INEP (https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/enade) e serão tratados pelo script Preparacao_dados_tabelas.R. 
As subpastas CSV e R guardaram as versões tratadas desses dados, para os próximos scripts serão utilizados os dados da Subpasta R, entretados na pasta CSV possui uma versão deles que pode ser aberta pelo Excel e Google Sheets.


## Scripts de Analise

Após a geração dos datasets tratados é possivel a execução dos seguintes scripts em qualquer ordem:

1. run_tables.R
2. run_tables_area.R
3. run_barplot.R
4. run_boxplot.R


Estes geram as tabelas, barplots e boxplots com os dados utilizados no artigos.  Todas as imagens e tabelas criadas pelos scripts, serão armazenadas em pastas geradas dentro próprio projeto, com o respectivo nome do script e estas serão subdivididas pelas categorias ou áreas dos cursos.

OBS: O script run_tables irá gerar as tabelas pelas categorias enquanto o script run_tables_area irá gerar as tabelas pelas áreas de conhecimento.
