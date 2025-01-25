# (1) Measures of Location----- 

# load data
library(palmerpenguins)
df <- penguins 

# (a.) What is the mean penguin body mass (in kilograms)?----

mean(df$body_mass_g, na.rm = TRUE)

# convert  answer to kg
4201.754 *.000001

#The mean penguin body mass is 0.004201754 kg

# (b.) What is the median penguin body mass (in kilograms)?----

median(df$body_mass_g, na.rm = TRUE)

#convert to kg

4050 * .000001

#The median penguin body mass is 0.00405 kg

# (c.) What are the 5th and 95th percentile penguin body masses (in kilograms)?----

quantile(df$body_mass_g, na.rm = TRUE, probs = c(0.05, 0.95))

#convert to kg

3150 * 0.000001
5650 * 0.000001

#The 5th and 95th percentile penguin body masses are 0.00315 kg and 0.00565 kg respectively

# (2) Measures of Spread-----

#(a.) What is the range in penguin body mass (in kg)?----

range(df$body_mass_g, na.rm = TRUE)

#convert to kg

2700 * 0.000001
6300 * 0.000001

# The range in penguin body mass is [0.0027, 0.0063] kg 

# (b.) What is the standard deviation in penguin body mass (in kg)?----

sd(df$body_mass_g, na.rm = TRUE)

#convert to kg

801.9545 * 0.000001

#The standard deviation in penguin body mass is 0.0008019545 kg


# (c.) What is the variance in penguin body mass (in kg)?----

var(df$body_mass_g, na.rm = TRUE)

#convert to kg

643131.1 * 0.000001

#The variance in penguin body mass is 0.6431311 kg

#(3) Visualize Data----
library(ggplot2)

#(a.) Scatterplot of penguin body mass (kg)----

ggplot(
  data = df, 
  aes(x=island, 
      y=body_mass_g,
      color=species)) +
  geom_jitter()


#(b.) Write a figure caption describing the contents of the figure.----

fig1 <- ggplot(
  data = df, 
  aes(x=island, 
      y=body_mass_g,
      color=species)) +
  geom_jitter() +
  labs(caption = "Fig1: Jitter plot of penguin body mass by island")

print(fig1)

ggsave(fig1, filename = 'Fig1.jpg')

#(c.) What do you notice about species distribution across the islands?----

#Adelie are on all three isalnds while Chinstrap is only on Dream Island and Gentoo is only on Biscoe Island.

#(d.) How do the raw values of penguin body mass compare to the mean penguin body mass you calculated above?----

# Most of the Gentoo penguin body mass observations are above the mean body mass while the other to species generally fall below the mean






