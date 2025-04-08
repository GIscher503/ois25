# -*- coding: utf-8 -*-
# +
# Graphique en radar avec les pointsforts/points faibles de sportifs
# fmsb = Functions for Medical Statistics Book with some Demographic Data, données japonaises de démographie et de santé analysées
if(!require("fmsb")){
    install.packages("fmsb", repos = "https://cloud.r-project.org/")
    library(fmsb)
    }
data <- as.data.frame(rbind(
    c(10,10, 10, 10, 10),
    c(0, 0, 0, 0, 0),
    c(8, 6, 7, 8, 6),
    c(9, 9,7, 8, 6)
    ))
   
colnames(data) <- c("Endurance", "Force", "Agilité", "Vitesse", "Précision")
rownames(data) <- c("Max", "Min", "Sportif A", "Sportif B")

radarchart(
    data,
    axistype = 1,
    pcol = c("Darkorange1", "midnightblue"),
    pfcol = c(scales::alpha("seagreen", 0.2), scales::alpha("darkred", 0.2)),
    plwd = 2,
    plty = 1,
    cglcol = "grey75",
    cglty = 1,
    axislabcol = "grey75",
    caxislabels = seq(0,10,2),
    title = "Comparaison de performances sportives"
    )
legend("topright", legend = c("Sportif A", "Sportif B"), bty = "n",
       pch = 20, col = colors_borders, text.col = "black")
# -


