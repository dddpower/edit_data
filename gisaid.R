library("GISAIDR")
credentials <- login("H.Chang", "Mmnnbbv1!")
variant_name <- list("alpha", "beta", "delta", "gamma", "lambda", "omicron")
for (e in variant_name) {
  df <- query(credentials = credentials, variant = e, fast = TRUE)
  write.csv(df, paste(e, "csv", sep = "."), row.names = FALSE)
}
