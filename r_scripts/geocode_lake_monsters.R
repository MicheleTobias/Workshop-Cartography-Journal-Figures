#GOAL: geocode the lake names in the lake monster dataset from Wikipedia (https://en.m.wikipedia.org/wiki/List_of_lake_monsters downloaded on 10/1/2020)

#Libraries
library(tmaptools)
library(sf)

#Set Working Directory
setwd("C:\\Users\\mmtobias\\Box\\Documents\\Presentations\\JournalFigureDesignWorkshop")

#Load the Data
monster.table<-read.csv("LakeMonsters.csv", stringsAsFactors = FALSE)

#Geocode the list of lakes
geocoded_places<-geocode_OSM(monster.table$Lake)

#Merge the monster.table with the geocoded_places
#monster.geo<-merge(geocoded_places[-15,], monster.table, by=c("query", "Lake"), all=TRUE)
monster.geo<-merge(x=monster.table, y=geocoded_places[-15,], by.x=c("Lake"), by.y=c("query"), all.x=TRUE, fill=NA)

#Fix missed geocodes
subset(monster.geo, is.na(monster.geo$lat))

missing.monsters<-geocode_OSM(c("Lake Arenal", "Lake Bangweulu", "Maika, Democratic Republic of the Congo", "Seljordsvatnet"))

monster.geo[1, 9:14]<-missing.monsters[1, 2:7]
monster.geo[2, 9:14]<-missing.monsters[2, 2:7]
monster.geo[45, 9:14]<-missing.monsters[3, 2:7]
monster.geo[51, 9:10]<-c(59.443386, 8.739382)

#Write a csv
write.csv(monster.geo, "LakeMonsters_Geocoded.csv")

#write a geopackage
monster.geo.sf<-st_as_sf(monster.geo[,1:10], coords=c("lon", "lat"), crs=4326)
st_write(monster.geo.sf, "LakeMonsters.gpkg", driver="GPKG")


