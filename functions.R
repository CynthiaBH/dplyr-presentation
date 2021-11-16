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
# Fonction d'affichage de grands tableaux - head seulement
show_head <- function(dt){
    kable(head(dt)) %>%
    kable_styling(full_width = F, font_size = 14)
}

# Arrondir
arrondir <- function(dt, variable, valeur){
  dt %>% mutate_at(variable, round, valeur)
}



