library(magrittr)
foo_foo <- little_bunny()

#Intermediate Steps

foo_foo_1 <- hop(foo_foo, through = forest)
foo_foo_2 <- scoop(foo_foo_1, up = field_mice)
foo_foo_3 <- bop(foo_foo_2, on = head)


diamonds <- ggplot2::diamonds
diamonds2 <- diamonds %>%
  dplyr::mutate(price_per_carat = price / carat)
pryr::object_size(diamonds)
#> 3.46 MB
pryr::object_size(diamonds2)
#> 3.89 MB
pryr::object_size(diamonds, diamonds2)

diamonds$carat[1] <- NA
pryr::object_size(diamonds)
#> 3.46 MB
pryr::object_size(diamonds2)
#> 3.89 MB
pryr::object_size(diamonds, diamonds2)


#Function Composition

bop(
  scoop(
    hop(foo_foo, through = forest),
    up = field_mice
  ),
  on = head
)


#Use the Pipe

foo_foo %>%
  hop(through = forest) %>%
  scoop(up = field_mouse) %>%
  bop(on = head)


my_pipe <- function(.) {
  . <- hop(., through = forest)
  . <- scoop(., up = field_mice)
  bop(., on = head)
}
my_pipe(foo_foo)


assign("x", 10)
x

"x" %>% assign(100)
x


env <- environment()
"x" %>% assign(100, envir = env)
x


tryCatch(stop("!"), error = function(e) "An error")
stop("!") %>%
  tryCatch(error = function(e) "An error")


rnorm(100) %>%
  matrix(ncol = 2) %>%
  plot() %>%
  str()

rnorm(100) %>%
  matrix(ncol = 2) %T>%
  plot() %>%
  str()


mtcars %$%
  cor(disp, mpg)

mtcars <- mtcars %>%
  transform(cyl = cyl * 2)



















