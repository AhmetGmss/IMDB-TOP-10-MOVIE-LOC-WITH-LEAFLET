
library(rvest)
# install.packages("leaflet")
library(leaflet)
library(sp)
library(dplyr)


data<-read.csv("imdbtop10loc.csv")

data<-data[complete.cases(data),]
data$long<- as.numeric(data$Longitude)
data$lat <- as.numeric(data$Latitude)

#data$popup_content <- paste(data$Location.Name, "-", data$Movie_Name)
data$popup_content <- paste("<b><span style='font-size: 16px; color: #660708;'>", data$Movie_Name, "</span></b><br>", "<b><span style='font-size: 14px; color: #034078
;'>",data$Location.Name,"</span></b><br>")


data.SP<-SpatialPointsDataFrame(data[,c(3,4)],data[,-c(3,4)])

m<-leaflet() %>%
  addProviderTiles("Esri.WorldTopoMap") %>%
  addCircleMarkers(data=data,lng = ~Longitude,lat=~Latitude,popup = ~popup_content,color = "#780000",fillColor = "#c1121f",radius = 4)
m


