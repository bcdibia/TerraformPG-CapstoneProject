provider "aws" {
  region  = "us-east-1"
}
terraform {
   backend "s3" {
    bucket = "# Add your S3 bucket here"
    key    = "default.tfstate"
    region = "# Add the S3 bucket region"
  }
}
module "kubernetes" {
  source = "./kubernetes"
  ami = "ami-0750959d601dd99e1"
  cluster_name = "pg-capstone-cluster"
  master_instance_type = "t2.micro"
  nodes_max_size = 1
  nodes_min_size = 1
  private_subnet01_netnum = "1"
  public_subnet01_netnum = "2"
  region = "us-east-1"
  vpc_cidr_block = "10.240.0.0/16"
  worker_instance_type = "t2.micro"
  vpc_name = "kubernetes"
  ssh_public_key = "# insert your private ssh here"
}
