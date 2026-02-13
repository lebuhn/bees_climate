#######
# Script to subset the California spatial dataset. The original file can be substetted using one of the following CSV files.
#
# Californian_Angiosperms_binomials.csv
# Californian_Gymnosperms_binomials.csv
# Californian_Pteridophyta_binomials.csv
# Californian_endemics_binomials.csv"
# Californian_floristic_province_binomials.csv
# Stebbins_and_Major_binomials.csv
#
# Change the file locations in lines 15, 16, and 20 to match where data is stored and will be saved.
# Change the number after the colon in line 18 to reflect how many taxa are in the the CSV file of line 16


allData <- read.csv('~/GitHub/CA_bees/data/California_Species_clean_All_epsg_3310.csv',as.is=T)
allSets <- read.csv('~/GitHub/CA_bees/data/Californian_Angiosperms_binomials.csv', as.is=T)
#for multiple species in allSets:
mySet <- allSets[1:1501,] #change the last number to match the number of obs.
subSet <- subset(allData, current_name_binomial%in%mySet)
write.csv(subSet, '~/GitHub/CA_bees/data/California_Angiosperms.csv')