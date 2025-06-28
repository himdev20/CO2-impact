
data<- read.xlsx("C:\Users\himan\Downloads\AgData.xlsx")

selected_columns<- data[, c("riceirrigatedarea1000ha", "riceyieldkgperha")]

mean_of_every_four<- function(column) {
  sapply(split(column, ceiling(seq_along(column) / 4)), mean, na.rm = TRUE)
}


means_data <- as.data.frame(apply(selected_columns, 2, mean_of_every_four))

plot(means_data$riceirrigatedarea1000ha,means_data$riceyieldkgperha, 
     main = "Regression Plot for rice",
     xlab = "Irrigation", ylab = "Yield",
     pch = 19, col = "blue")


#model <- lm(riceirrigatedarea1000ha ~ riceyieldkgperha , data =means_data)
#abline(model, col = "red", lwd = 2)



