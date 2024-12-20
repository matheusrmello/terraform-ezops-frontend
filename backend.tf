terraform {
  backend "s3" {
    bucket = "test-matheus-tfstate-front-2"
    key    = "frontend/tfstate"
    dynamodb_table = "test-matheus-terraform-state-frontend"
    region = "us-east-2"
  }
}
