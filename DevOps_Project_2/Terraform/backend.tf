terraform {
  backend "s3" {
    bucket = "my-terraform-statefile"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
