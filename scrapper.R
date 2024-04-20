library(rvest)
# install.packages("leaflet")
library(leaflet)
library(sp)

"https://www.latlong.net/location/the-shawshank-redemption-locations-33"
"https://www.latlong.net/location/the-good-the-bad-and-the-ugly-locations-321"
"https://www.latlong.net/location/the-godfather-locations-37"
"https://www.latlong.net/location/the-dark-knight-locations-118"
"https://www.latlong.net/location/the-godfather-part-ii-locations-323"
"https://www.latlong.net/location/12-angry-men-locations-818"
"https://www.latlong.net/location/schindler-s-list-locations-131"
"https://www.latlong.net/location/the-lord-of-the-rings-the-return-of-the-king-locations-848"
"https://www.latlong.net/location/pulp-fiction-locations-35"
"https://www.latlong.net/location/the-lord-of-the-rings-the-fellowship-of-the-ring-locations-38"

 movieList<-list("https://www.latlong.net/location/the-shawshank-redemption-locations-33","https://www.latlong.net/location/the-good-the-bad-and-the-ugly-locations-321"
,"https://www.latlong.net/location/the-dark-knight-locations-118","https://www.latlong.net/location/the-godfather-part-ii-locations-323",
                "https://www.latlong.net/location/12-angry-men-locations-818", "https://www.latlong.net/location/schindler-s-list-locations-131",
             "https://www.latlong.net/location/the-lord-of-the-rings-the-return-of-the-king-locations-848","https://www.latlong.net/location/pulp-fiction-locations-35",
            "https://www.latlong.net/location/the-lord-of-the-rings-the-fellowship-of-the-ring-locations-38"
)



url <-read_html("https://www.latlong.net/location/the-lord-of-the-rings-the-fellowship-of-the-ring-locations-38")

all_tables<-url %>% html_table(fill=TRUE)

lotrfellowship<-all_tables[[1]]
head(lotrfellowship)

Movie_Name<-c("12 Angry Men"
  ,"12 Angry Men"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"Batman: The Dark Knight"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Godfather II"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"The Good The Bad And The Ugly"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Fellowship Of The Ring"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
  ,"LOTR: The Return Of The King"
              ,"LOTR: The Return Of The King"
              ,"LOTR: The Return Of The King"
              ,"LOTR: The Return Of The King"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Pulp Fiction"
  ,"Schindlers List"
  ,"Schindlers List"
  ,"Schindlers List"
  ,"Schindlers List"
  ,"Schindlers List"
  ,"Schindlers List"
  ,"Schindlers List"
  ,"The Shawshank Redemption"
  ,"The Shawshank Redemption"
  ,"The Shawshank Redemption"
  ,"The Shawshank Redemption"
  ,"The Shawshank Redemption"
  ,"The Shawshank Redemption"
  ,"The Shawshank Redemption"
  ,"The Shawshank Redemption"
)



imdbtop10loc<- rbind(angrymen,darkknight,godfather,godfather2,goodbadugly,lotrfellowship,lotrreturn,pulpfiction,schindlers,shawshank)
print(imdbtop10loc)

imdbtop10loc['Movie_Name']<-Movie_Name

data1<-data.frame(imdbtop10loc)




write.csv(data1,"imdbtop10loc.csv")
data<-read.csv("imdbtop10loc.csv")

data<-data[complete.cases(data),]
data$long<- as.numeric(data$long)
data$lat <- as.numeric(data$lat)



data.SP<-SpatialPointsDataFrame(data[,c(8,9)],data[,-c(8,9)])


# This is my scapping page. I get 10 different movies from a website and i
# combined them one dataframe imdbtop10loc.
# My data has 10 movies and their areas.
