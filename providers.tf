provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "default"
  region = "us-east-2" # Replace with your default region
}