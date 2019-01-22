#!/bin/bash
# DIRECT HW1. Downloade the Harvard clean energy data.

echo " Let's check if you already have the clean energy data"

# Check if the file exist.
if [ -f "HCEPDB_moldata.csv" ]; then
  echo " Yay, you already have the file" 
elif [ -f "HCEPDB_moldata.zip" ]; then 
   echo " You have Zip file. Unzipping now"
   unzip HCEPDB_moldata.zip
else 
   echo " You don't have the file.Downleading now"
   curl -O http://faculty.washington.edu/dacb/HCEPDB_moldata.zip
   echo " Unzipping the file"  
   unzip HCEPDB_moldata.zip
fi

echo " Showing the first few lines of the csv file"
head -n 3 HCEPDB_moldata.csv

