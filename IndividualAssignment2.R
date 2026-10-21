require(ggplot2)

penguins <- read.csv("~/Documents/QAC 380/assignment2-bm/penguins.csv")

ggplot(data=penguins)+
  geom_point(aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data=penguins)+
  geom_boxplot(aes(x=species, y=body_mass_g, fill=species))


model<-aov(body_mass_g ~ island, data=penguins)
summary(model)

model1<-aov(flipper_length_mm ~ species, data=penguins)
summary(model1)

model2<-aov(flipper_length_mm ~ island, data=penguins)
summary(model2)

model3<-aov(flipper_length_mm ~ species + island, data=penguins)
summary(model3)

#new model added by dragos
model4<-lm(body_mass_g ~ species + island + sex, data=penguins)
summary(model4)


