# File 2 - Computing by groups within data.frames with dplyr and broom
# From: http://stat545.com/block023_dplyr-do.html  and
# https://speakerdeck.com/jennybc/ubc-stat545-split-apply-combine-intro and
# http://stat545.com/block023_dplyr-do.html


# working off of gampminder
library(gapminder)

# slide 21 - 'best? 2015, dplyr + broom solution:

df_lm_by_country <- gapminder %>% 
  group_by(country)  %>% 
  do(tidy(lm(lifeExp ~ year, data=.)))  
# note - if no tidy(), then the results are returned as an lm, not a data frame.
# with tidy(), this returns a grouped data frame, with one row per country*term
# of the regression.

class(df_lm_by_country)
View(df_lm_by_country)

# from the presentation:  when you compute an unnamed data.frame inside do(),
# you get a row-bound data.frame back.   Broom can help.




