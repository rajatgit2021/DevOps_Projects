terraform {
  backend "s3" {
    bucket = "my-tf-statefile-project1"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
