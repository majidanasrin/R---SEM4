reverse_list <- function(lst) {
  
  if (length(lst) <= 1) {
    return(lst)
  }
  
  c(reverse_list(lst[-1]), lst[1])
}


my_list <- list(1, 2, 3, 4, 5)
reversed <- reverse_list(my_list)
print(reversed)
