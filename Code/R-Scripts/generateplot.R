program <- c()
runtime <- vector(mode="numeric", length=0)

for(f in list.files(path = "./Data"))
{
  #print(f)
  df <- read.table(paste("./Data/",f, sep=""), quote="\"")
  s <- 0
  for(i in seq(2, nrow(df), by=1))
  {
    s <- s + df$V1[i] - df$V1[i-1]
  }
  
  program <- c(program, substr(f, 1, nchar(f) - 4))
  runtime <- c(runtime, s/nrow(df) - 100000)

}

runtime_table <- data.frame(program, runtime)
par(bg="grey95")
barplot(height = runtime_table$runtime, names.arg = runtime_table$program, cex.names = 0.6, horiz = TRUE, las = 1, col = "orange", xlim=c(0,100), main="Time Comparison for Loop Variations", xlab="Time (milliseconds)")
View(runtime_table)
