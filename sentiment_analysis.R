###SENTIMENT ANALYSIS
library(rtweet);
library("dplyr");
library("tidyr");
library("tidytext");



# Twitter API
create_token(
 app = "TuitProyect",
 consumer_key = "4kbUC8wpbPJ0PqJyF5JmKag8K",
 consumer_secret = "ToXD21XPu50dLqqzwfv2S6mCCF2jppLTTxKmzkf9741hmAF885",
 access_token = "635018242-8zuf9May6LZLRxLbZTQmuSu8XNTqJNRVdkJskIfS",
 access_secret = "GvP6zmzNiZWW7NfcjkfU6bYm0MXpit1DQnAqyJhktDiRa")
#create_token(
 # app = "ProyectoAula",
  #consumer_key = "CbgVOPCpip3bzvS8JDWI9uR9u",
  #consumer_secret = "w6LFgMCWEiHeNM1BLlRIjFZE4GjC8ZB7FlZmICohHqvrQY7q4D",
  #access_token = "635018242-rS2bHxTKKTmEYUwXMNyuKk7BDBHfhvUGaGTd6XXB",
  #access_secret = "OhEDj6yv9yqbJF5riB7RKoO1E1S0AWjsJ56TR1jP0DZ0u")

# Google Maps API https://developers.google.com/maps/documentation/javascript/get-api-key
apiKey <- "AIzaSyAfPAREaoET2StcKtl8aNYYLgNsjpKsZnI"

#ciud=rtweet:::citycoords

# AUSTRALIA
newTweets_adelaide <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                           retryonratelimit = T, lang = "en",
                           geocode = lookup_coords("adelaide australia", apikey = apiKey),
                           include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/australia/adelaide/adelaide"
save_as_csv(newTweets_adelaide, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_brisbane <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                           retryonratelimit = T, lang = "en",
                           geocode = lookup_coords("brisbane australia", apikey = apiKey),
                           include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/australia/brisbane/brisbane"
save_as_csv(newTweets_brisbane, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_darwin <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                           retryonratelimit = T, lang = "en",
                           geocode = lookup_coords("darwin australia", apikey = apiKey),
                           include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/australia/darwin/darwin"
save_as_csv(newTweets_darwin, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_melbourne <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                           retryonratelimit = T, lang = "en",
                           geocode = lookup_coords("melbourne australia", apikey = apiKey),
                           include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 weekdirPath <- "C:/Users/BRYANST25/Documents/covid19/australia/adelaide/adelaide"
dirPath <- "C:/Users/BRYANST25/Documents/covid19/australia/melbourne/melbourne"
save_as_csv(newTweets_melbourne, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_perth <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                           retryonratelimit = T, lang = "en",
                           geocode = lookup_coords("perth australia", apikey = apiKey),
                           include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/australia/perth/perth"
save_as_csv(newTweets_perth, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_sydney <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                           retryonratelimit = T, lang = "en",
                           geocode = lookup_coords("sydney australia", apikey = apiKey),
                           include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/australia/sydney/sydney"
save_as_csv(newTweets_sydney, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
#EE.UU
newTweets_newyork_ny <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                    retryonratelimit = T, lang = "en",
                                    geocode = lookup_coords("usa", apikey = apiKey),
                                    include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/eeuu/newyork_ny/newyork_ny_"
save_as_csv(newTweets_newyork_ny, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_newyork_us <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                    retryonratelimit = T, lang = "en",
                                    geocode = lookup_coords("new york us", apikey = apiKey),
                                    include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/eeuu/newyork_us/newyork_us"
save_as_csv(newTweets_newyork_us, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_newyork_ny_us <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                  retryonratelimit = T, lang = "en",
                                  geocode = lookup_coords("new york ny us", apikey = apiKey),
                                  include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/eeuu/newyork_ny_us/newyork_ny_us"
save_as_csv(newTweets_newyork_ny_us, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
#MÉXICO
newTweets_chihuahua_mexico <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                      retryonratelimit = T, lang = "es",
                                      geocode = lookup_coords("chihuahua mexico", apikey = apiKey),
                                      include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/mexico/chihuahua_mexico/chihuahua_mexico"
save_as_csv(newTweets_chihuahua_mexico, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_mazatlan_mexico <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                      retryonratelimit = T, lang = "es",
                                      geocode = lookup_coords("mazatlán mexico", apikey = apiKey),
                                      include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/mexico/mazatlan_mexico/mazatlan_mexico"
save_as_csv(newTweets_mazatlan_mexico, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_mexico_city_mexico <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                         retryonratelimit = T, lang = "es",
                                         geocode = lookup_coords("mexico city mexico", apikey = apiKey),
                                         include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/mexico/mexico_city_mexico/mexico_city_mexico"
save_as_csv(newTweets_mexico_city_mexico, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_mexico_city <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                      retryonratelimit = T, lang = "es",
                                      geocode = lookup_coords("mexico city", apikey = apiKey),
                                      include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/mexico/mexico_city/mexico_city"
save_as_csv(newTweets_mexico_city, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_veracruz_mexico <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                      retryonratelimit = T, lang = "es",
                                      geocode = lookup_coords("veracruz mexico", apikey = apiKey),
                                      include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/mexico/veracruz_mexico/veracruz_mexico"
save_as_csv(newTweets_veracruz_mexico, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
#PERÚ
newTweets_lima_peru <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                           retryonratelimit = T, lang = "es",
                                           geocode = lookup_coords("lima peru", apikey = apiKey),
                                           include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/peru/lima_peru/lima_peru"
save_as_csv(newTweets_lima_peru, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
#ESPAÑA
newTweets_barcelona_spain <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                     retryonratelimit = T, lang = "es",
                                     geocode = lookup_coords("barcelona spain", apikey = apiKey),
                                     include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/espana/barcelona_spain/barcelona_spain"
save_as_csv(newTweets_barcelona_spain, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
newTweets_madrid_spain <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                     retryonratelimit = T, lang = "es",
                                     geocode = lookup_coords("madrid spain", apikey = apiKey),
                                     include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/espana/madrid_spain/madrid_spain"
save_as_csv(newTweets_madrid_spain, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");
#ECUADOR
newTweets_guayaquil_ecuador <- search_tweets(q = "coronavirus OR covid19 OR Covid_19 OR CoronaCrisis",
                                        retryonratelimit = T, lang = "es",
                                        geocode = lookup_coords("guayaquil ecuador", apikey = apiKey),
                                        include_rts = FALSE, n = 1e5) # 1st day 3e5, to go back ~1 week
dirPath <- "C:/Users/BRYANST25/Documents/covid19/ecuador/guayaquil_ecuador/guayaquil_ecuador"
save_as_csv(newTweets_guayaquil_ecuador, paste0(dirPath,Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8");




# Specify dir
dirPath <- "~/Documents/INSERT_PATH"

# Create dir for storage
if(!dir.exists(paste0(dirPath, "tweets/"))){
  dir.create("tweets/")
}

# Write csv with date
save_as_csv(newTweets, paste0(dirPath, "tweets/", Sys.Date(), ".csv"),
            prepend_ids = TRUE, na = "",
            fileEncoding = "UTF-8")