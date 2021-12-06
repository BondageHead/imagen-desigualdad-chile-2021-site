#Librerías

pacman::p_load(dplyr, sjlabelled, stargazer, sjmisc, summarytools, kableExtra, sjPlot, corrplot, ggplot2, webshot)


#Cargar bases de datos

load(imagendesigualdad2000, imagendesigualdad2009, imagendesigualdad2012, imagendesigualdad2013)


#Correlación

g=ggplot(imagendesigualdad2000, aes(x=te17a, y=te12)) +
  geom_point()
g

view(tablades2000)

#Para tablas de regresión. (Exportar tablas de regresión)

sjPlot::tab_model(imagendesigualdad2000, show.ci=FALSE, file = "tabladesigualdad1.html")


#Para guardarlo en formato imagen (librería; webshot)

webshot("nombre cualquiera.html","nombre cualquiera.png")