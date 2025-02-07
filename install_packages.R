# Package installation script
packages <- c(
  "tidyverse",
  "sf",
  "spdep",
  "usdm",
  "mgcv",
  "MuMIn",
  "ncf",
  "vegan",
  "corrplot",
  "spatialreg"
)

# Install missing packages
new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

# Print confirmation
cat("Required packages installed:\n")
cat(paste("-", packages, collapse = "\n"))