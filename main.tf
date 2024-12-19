module "vpc" {
  source             = "./modules/vpc"
  name               = "example"
  vpc_cidr           = "10.0.0.0/16"
  availability_zones = ["ap-south-1a", "ap-south-1b"]
  subnet_cidrs       = ["10.0.1.0/24", "10.0.2.0/24"]
  is_public          = [true, false]
  tags = {
    Environment = "Production"
  }
}
