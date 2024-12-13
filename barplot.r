

library (readxl)
data <- read_excel("dataSR.xlsx")
str(data)

#change to factor
library(dplyr)
data <- data %>%
  mutate(
    Year = as.factor(Year),
    Country = as.factor(Country),
    Skill = as.factor(Skill),
    WHO_Region = as.factor(WHO_Region)
  )

#Barplot
library(ggplot2)
ggplot(data, aes(x=Country, y=Year, fill=WHO_Region)) +
  geom_bar(stat="identity", position=position_dodge()) +
  theme_minimal() +
  labs(x = "Country", y = "Year of Publication", fill = "WHO Region") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

