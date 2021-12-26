## "Create a Leaflet Map for Subway Stations in Ýzmir using Leaflet in R"


library(leaflet) # call the library 

d<-read.csv("metro-istasyonlar.csv",header=T,sep=";") #read the data set
head(d)

leaflet()%>%setView(lng=27.142826, lat=38.423733, zoom=11)%>%addTiles() #create the viewer

leaflet()%>%setView(lng=27.142826, lat=38.423733, zoom=11)%>%addTiles()%>%addMarkers(lng=as.numeric(d$Longitude), lat= as.numeric(d$Latitude)) # then add the markers corresponding coordinates

