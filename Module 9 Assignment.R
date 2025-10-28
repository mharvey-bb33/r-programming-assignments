#Load libraries
library(lattice)
library(ggplot2)

# Read and load dataset
spotifydata <- read.csv("C:/Users/mharv/Documents/Module9/spotify.csv")
head(spotifydata)

#Create two base r plots

#Scatterplot
plot(spotifydata$danceability, spotifydata$tempo,
main = "Scatter Plot: Danceability vs Tempo",
xlab = "Danceability",
ylab = "Tempo (BPM)"
)

# Histogram
hist(spotifydata$tempo,
     main   = "Histogram: Tempo (BPM) Distribution",
     xlab   = "Beats per Minute (BPM)",
     ylab   = "Song Frequency")

#Lattice: Multivariate conditional scatter
xyplot(popularity ~ danceability | genre,
       data = spotifydata,
       main = " Multivariate Scatter: Popularity vs Danceability by Genre",
       xlab = "Danceability",
       ylab = "Popularity",
       col  = "blue",
       pch  = 20)

#ggplot: Layered Histogram

ggplot(spotifydata, aes(x = popularity, fill = genre)) +
  geom_histogram(color = "black", bins = 20, show.legend = FALSE) +
  facet_wrap(~ genre) +
  labs(title = " ggplot: Distribution of Popularity by Genre",
       x = "Popularity",
       y = " Song Frequency") +
  theme_minimal()
