# List of packages you want to check and install if missing. Add to this string if you'd like to install additional packages following the previous package with ", " and in double quotations. !Names here much match the case and spelling of the packages you want!
packages_to_install <- c("ggplot2")
# Function to check, install, and load packages
install_and_load_packages <- function(packages) {
  # Determine which packages are not installed
  packages_needed <- packages[!(packages %in% installed.packages()[,"Package"])]
  # Install missing packages
  if (length(packages_needed) > 0) {
    install.packages(packages_needed, dependencies = TRUE)
    print(paste("Installed packages:", paste(packages_needed, collapse = ", ")))
  } else {
    print("All required packages are already installed.")
  }
  # Load (attach) the installed packages
  invisible(lapply(packages, library, character.only = TRUE))
}
# Call the function to install and load missing packages
install_and_load_packages(packages_to_install)



file_path <- file.choose()
PrecipCWE <- read.csv(file_path)

ggplot(data = PrecipCWE, aes(x = PrecipCWE$CWE, y = PrecipCWE$PPT)) + 
  geom_point(color = "black", pch = 21)

stats <- summary(PrecipCWE)
stats

beeDat <- read.csv("~/Desktop/PINC2024/Research Project/BeeDataNoiNatBio_PPTCWE.csv")
summary(beeDat)

ggplot(data = beeDat, aes(x = beeDat$X_RICHNESS_ALL_, y = beeDat$PPT)) + 
  geom_point(color = "black", pch = 21) + 
  geom_smooth(method = "lm", se = FALSE)

ggplot(data = beeDat, aes(x= beeDat$CWE, y = beeDat$PPT)) + 
  geom_point(color = "black", pch = 21) + 
  geom_smooth(method = "lm", se = FALSE)




