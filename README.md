# NYC_Uber_Data_Analysis_GCP_Mage
This project mainly focuses on building data pipelines using tools such as GCP, Mage and Looker to create a dashboard for analyzing the uber trip data for New York City.

## Data Flow Architecture
![Data_flow_architecture](https://github.com/suchitranair191/NYC_Uber_Data_Analysis_GCP_Mage/assets/22407566/ec918eac-38bc-4b8d-9f68-3814f5dc494c)

## Dataset
### Description
Trip information for yellow and green taxis includes fields for the pick-up and drop-off times and locations, trip lengths, itemised rates, rate kinds, payment methods, and driver-reported passenger counts. This project used the dataset from the year 2016.
#### Website: https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
#### Data dictionary:  https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf

## Data model
The dataset was then modelled by identifying and separating the required fact tables and dimension tables relevent to this analysis. 
<img width="1090" alt="Screen Shot 2023-07-08 at 1 14 49 AM" src="https://github.com/suchitranair191/NYC_Uber_Data_Analysis_GCP_Mage/assets/22407566/4c6f7a2b-4ebe-4d77-a071-54b679bda90e">

## Commands to install and configure Mage, Python, Pandas and BigQuery on Compute Engine.
### Commands to install Python and pip:
#### sudo apt-get install update
#### sudo apt-get install python3-distutils
#### sudo apt-get install python3-apt
#### sudo apt-get install wget
#### wget https://bootstrap.pypa.io/get-pip.py
#### sudo python3 get-pip.py
### Commands to install Mage:
#### sudo pip3 install mage-ai
### Install Pandas
#### sudo pip3 install pandas
### Install Google Cloud Library
#### sudo pip3 install google-cloud
#### sudo pip3 install google-cloud-bigquery



