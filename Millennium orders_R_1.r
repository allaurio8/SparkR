# Databricks notebook source
# 10/24/2023: start the spark session
# 5/15/2023
library(SparkR)
sparkR.session(enableHiveSupport = TRUE)

# COMMAND ----------

# 10/24/2023: get path for SQL table from "location"
# 2/15/2023
display(sql("DESCRIBE DETAIL cern_ord_prov"))

# COMMAND ----------

# 10/24/2023: install packages
install.packages("sparklyr")
install.packages("tidyverse")

library(sparklyr)
library(tidyverse)

# COMMAND ----------

# 10/24/2023: load data from the source table
ord_df = read.df(path = "dbfs:/user/hive/warehouse/cern_ord_prov")

# COMMAND ----------

# 10/24/2023: the hive table is now a data frame
printSchema(ord_df)
showDF(ord_df)

# COMMAND ----------

display(ord_df)

# COMMAND ----------

str(ord_df)

# COMMAND ----------

head(ord_df)

# COMMAND ----------

dput(names(ord_df))
