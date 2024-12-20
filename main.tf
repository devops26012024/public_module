module "vpc" {
   source             = "git::https://github.com/devops26012024/private_module.git?ref=v1.0.0"
  #name               = "example"
  #vpc_cidr           = "10.0.0.0/16"
  #availability_zones = ["ap-south-1a", "ap-south-1b"]
  #subnet_cidrs       = ["10.0.1.0/24", "10.0.2.0/24"]
  #is_public          = [true, false]
  #tags = {
   # Environment = "Production"
  #}
}

terraform {
  backend "s3" {
    bucket         = "pradeep-terraform-1234333"
    key            = "pub-module/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-demo"
    encrypt        = true
  }
}
