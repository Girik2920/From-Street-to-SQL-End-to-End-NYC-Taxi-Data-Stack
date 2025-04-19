locals {
  data_lake_bucket = "ny_taxi_rides_data_lake"
}

variable "project" {
  description = "Your GCP project ID"
  default = "example-gc-project-id-123456"  # Write the GC project ID here
  type = string
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "example-europe-west1"  # Write the GC project region here
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "ny_taxi_rides"
}
