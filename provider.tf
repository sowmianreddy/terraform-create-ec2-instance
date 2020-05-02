provider "aws" {
  access_key = var.access_key 
  secret_key = var.secret_key
   region  = "us-west-1"
}

provider "template" {
  #version = "~> 0.1"
}
