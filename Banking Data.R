library(tidyverse)
library(rtweet)

#every week do this (19 Oct)
data<-search_tweets(
  q="baking",
  n=18000,
  include_rts = FALSE,
  lang="en",
  retryonrtelimit = TRUE
)

data<-data%>%flatten()

#change the name of the file
#if you dont, you are going to lose your data!!!

data%>%write_csv("21_10_2021.csv")

data<-search_tweets(
  q="baking",
  n=18000,
  include_rts = FALSE,
  lang="en",
  retryonrtelimit = TRUE
)