# No import ----

# Define a variável de ambiente R_INTERACTIVE como false
Sys.setenv(R_INTERACTIVE = "false")

# Define a variável de ambiente RSTUDIO_PROJECT_SAVE como never
Sys.setenv(RSTUDIO_PROJECT_SAVE = "never")
Sys.setenv(RSTUDIO_AUTO_SAVE = "0")


# library ----

library(usethis)

# criar pasta ----

# A função 'dir.create()' permite criar um pasta/diretório, no explorador de
# Arquivos Do Windows, por meio de uma janela que abrirá
# (parecida com o explorador de arquivos).

# Você pode criar uma pasta, que atenda as obrigações de nomes,
# da função 'dir.create()', ou selecionar uma já existente.

path<-dir.create()

# Caso já exista um diretório, use 'choose.dir()' para selecionar.
# Também há a possibilidade de criar a pasta diretamente com esta função.

#criar o projeto .Rproj ----

path<-choose.dir()

# Usar a função 'create_project(path, open = FALSE)' para criar o
# projeto .Rproj e, argum opne =FALSE, para impedir de abrir uma nova seção
# de janela do RSTUDIO

usethis::create_project(path, open = FALSE)

# Usar a função 'create_project(path) para ativar o projeto. Infelimente
# não sei como impedir de abrir uma nova seção de janela.

usethis::proj_activate(path)

# A função 'use_mit_license("LICENSE")' cria uma license MIT, com o nome 'LICENSE'.

usethis::use_mit_license("LICENSE")

# A função 'use_package("ggplot2", "Suggests")' força vpcê a instalar o pacote 'ggplot2'.

usethis::use_package("ggplot2", "Suggests")

# As funções 'use_readme_md()' e 'use_news_md()' criam arquivos .md chamados de
# README.md e NEWS.md, respectivamente.

usethis::use_readme_md()
usethis::use_news_md()

# teste ----
usethis::use_test("test")

x <- 1 & y <- 2
usethis::use_data(x, y)

# push github----

usethis::create_github_token()

usethis::edit_r_environ()


# usethis::browse_github_token() foi deprecated

usethis::use_git_config(user.name = "czargab18",
                        user.email = "meunomedeemail@gmail.com")

usethis::git_sitrep()

# usar o git
usethis::use_git()

# usar github
usethis::use_github()

