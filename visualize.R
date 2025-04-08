# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .R
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.16.4
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

# +
# Charger la library ggplot2 (installer si nécessaire : install.packages("ggplot2"))
library(ggplot2)

# Créer des données simulées simples
set.seed(123) # Pour la reproductibilité
data <- data.frame(
  x = 1:10,                    # Axe X : 10 points
  y = c(2, 5, 3, 8, 6, 9, 4, 7, 5, 10), # Valeurs Y
  taille = runif(10, 5, 15)    # Tailles aléatoires pour les points
)

# Créer un graphique simple avec ggplot2
ggplot(data, aes(x = x, y = y)) +
  geom_line(color = "blue", linewidth = 1) +          # Ligne bleue
  geom_point(aes(size = taille), color = "red") + # Points rouges avec tailles variables
  labs(title = "Graphique Simple",               # Titres
       x = "Axe X",
       y = "Axe Y") +
  theme_minimal() +                              # Thème épuré
  scale_size_continuous(range = c(2, 10))        # Plage de tailles des points


