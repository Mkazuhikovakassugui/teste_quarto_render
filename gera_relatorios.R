# gerar relatórios individualizados para cindros = 3, cilindros = 4 e cilindros = 5

# PACOTES UTILIZADOS
library(purrr)
library(quarto)
library(here)
library(glue)

# DEFINE O CAMINHO DO ARQUIVO QMD
caminho_qmd <- here("teste_quarto_render.qmd")

# LISTAR OS NÚMEROS DE CILINDROS -------------------
lista_cilindros <- c(4, 6, 8)

# gera os relatórios com purrr e quarto_render
map(
  lista_cilindros,
  ~ quarto_render(
    caminho_qmd,
    execute_params = list(cilindros = .x),
    output_file = glue('{.x}_quarto.html')
  )
)

