provider "aws" {
  region = "us-east-1" # Free tier is available in all regions, but this is common
}

terraform {
  backend "s3" {
    bucket  = "githubbackend"     # S3 bucket name
    key     = "terraform.tfstate" # Path to the state file in the bucket
    region  = "us-east-1"         # Adjust if using another region
    encrypt = true                # Optional: Encrypt state file at rest
    #dynamodb_table = "terraform-locks" # Optional: Use DynamoDB for state locking, use to keep version of track of latest s3 version
  }
}