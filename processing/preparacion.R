#Paquetes y librerias
library(pacman)
pacman::p_load(dplyr, haven, sjmisc, car, sjlabelled, summarytools, ggplot)

#Cargar base de datos
rm(list=ls())
options(scipen=999)

MarAbr2000 <- read_sav("input/data/original/Encuesta CEP39MarAbr2000.sav")
MayJun2009 <- read_sav("input/data/original/EncuestaCEP59May-Jun2009.sav")
JulioAgosto2012 <- read_sav("input/data/original/Encuesta CEP 67JulioAgosto2012.sav")
JulioAgosto2013 <- read_sav("input/data/original/Encuesta CEP 69JulioAgosto2013.sav")

sjlabelled::get_label(MarAbr2000)
sjlabelled::get_label(MayJun2009)
sjlabelled::get_label(JulioAgosto2012)
sjlabelled::get_label(JulioAgosto2013)

names(JulioAgosto2012)
names(JulioAgosto2013)
names(MarAbr2000)
names(MayJun2009)

#Seleccionar variables
imagendesigualdad2000 <- MarAbr2000 %>% select(te17a, te12, dat_5, p2, p4, dat_1, dat_2, dat_3, dat_7, p5, p8)
imagendesigualdad2009 <- MayJun2009 %>% select(TE2P24_A, MBP04, DDP05, MBP02, MBP06, MBP07, DDP01, DDP02, DDP03, DDP08, MBP14)
imagendesigualdad2012 <- JulioAgosto2012 %>% select(TE1P14a, MBP04, DDP03, MBP02, MBP06, MBP07, DDP01, DDP02, DDP29, DDP14, MBP14)
imagendesigualdad2013 <- JulioAgosto2013 %>% select(TE1P12a, MBP04, DDP03, MBP02, MBP06, MBP07, DDP01, DDP02, DDP28, DDP14, MBP14)


#Procesamiento variables de interés

names(imagendesigualdad2000)
names(imagendesigualdad2009)
names(imagendesigualdad2012)
names(imagendesigualdad2013)

sjlabelled::get_label(MarAbr2000)
sjlabelled::get_label(MayJun2009)
sjlabelled::get_label(JulioAgosto2012)
sjlabelled::get_label(JulioAgosto2013)

sjlabelled::get_label(imagendesigualdad2000)
sjlabelled::get_label(imagendesigualdad2009)
sjlabelled::get_label(imagendesigualdad2012)
sjlabelled::get_label(imagendesigualdad2013)

#Generar Tabla descriptiva
dfSummary(imagendesigualdad2000, plain.ascii = FALSE)
view(dfSummary(imagendesigualdad2000, headings=FALSE, method = "render"))

dfSummary(imagendesigualdad2009, plain.ascii = FALSE)
view(dfSummary(imagendesigualdad2009, headings=FALSE, method = "render"))

dfSummary(imagendesigualdad2012, plain.ascii = FALSE)
view(dfSummary(imagendesigualdad2012, headings=FALSE, method = "render"))

dfSummary(imagendesigualdad2013, plain.ascii = FALSE)
view(dfSummary(imagendesigualdad2013, headings=FALSE, method = "render"))

#Guardar Base de datos procesada
save(imagendesigualdad2000,file = "input/data/proc/imagendesigualdad2000.RData")
save(imagendesigualdad2009,file = "input/data/proc/imagendesigualdad2009.RData")
save(imagendesigualdad2012,file = "input/data/proc/imagendesigualdad2012.RData")
save(imagendesigualdad2013,file = "input/data/proc/imagendesigualdad2013.RData")