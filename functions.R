# Script R qui contient les fonctions utiles au Rmarkdown

# Fonction d'affichage des tableaux avec kable
show_table <- function(dt){
dt %>%
  kbl() %>%
  kable_styling(full_width = F)
}
# Fonction d'affichage des tableaux avec kable --plus petit
show_table_sm <- function(dt){
  dt %>%
    kbl() %>%
    kable_styling(full_width = F, font_size = 12)
}

# Arrondir
arrondir <- function(dt, variable, valeur){
  dt %>% mutate_at(variable, round, valeur)
}



