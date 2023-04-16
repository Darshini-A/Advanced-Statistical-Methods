# for summary 
install.packages('dplyr')
library(dplyr)

# for ggboxplot
install.packages('ggpubr')
library(ggpubr)


red_bulb <- c(38.9, 61.2, 73.3, 51.8, 63.4, 64.6, 48.4, 48.8)
orange_bulb <- c(47.8, 60, 63.4, 56, 59.4, 67.3, 61.3, 62.4)

BULB_PRICE = c(red_bulb, orange_bulb)
BULB_TYPE = rep(c('red', 'orange'), each = 8)
Dataset <- data.frame(BULB_TYPE, BULB_PRICE, stringsAsFactors = TRUE)
Dataset

group_by(Dataset, BULB_TYPE) %>% 
  summarize(
    count = n(),
    median = median(BULB_PRICE, na.rm = TRUE),
    IQR = IQR(BULB_PRICE, na.rm = TRUE) )

ggboxplot(Dataset,
          x = "BULB_TYPE",
          y = "BULB_PRICE",
          color = "BULB_TYPE",
          palatte = c("#FFA500", "#FF0000"),
          ylab = 'BULB_PRICES', 
          xlab = 'BULB_TYPES')

wilcox.test(BULB_PRICE ~ BULB_TYPE, data = Dataset, exact = FALSE)

#∵ p value is greater than 0.05, we fail to reject the null hypothesis 
#∴ we conclude there is no significant difference 