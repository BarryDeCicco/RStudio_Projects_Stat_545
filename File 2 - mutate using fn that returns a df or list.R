# File 2 - mutate using fn that returns a df or list
# From:  https://community.rstudio.com/t/mutate-using-fn-that-returns-a-df-or-list/18649

# Suppose we have a function that returns a named df/list with more 
# than one variable output.
# 
# Question: How can run that function against a df and 
# create more than one new variable at a time, 
# and what is the most natural way with dplyr/ purrr?

# (libraries dplyr and purrr were invoked)

toy_fun <- function(chr) {
  data.frame(let_rank = which(letters == chr),
             rando = rnorm(n = length(chr)))
}

df_input <- data.frame(lets = sample(letters, 10))
View(df_input)


# suggested answer:  

df_output <- df_input %>% 
  mutate(res = purrr::map(lets, toy_fun)) %>% 
  tidyr::unnest(res)

# if the last line is not run, 'res' looks like 
# 'list(let_rank = 8, rando = 1.13843153084193)'
# the last line breaks the list into two columns.


# my further examination:

class(df_output)    # data.frame
names(df_output)    # one name - "lets"

View(df_output)




