provider "aws" {
  region  = "us-east-1"
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
  ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTqpM0i5xjn0vwDWnewLWgG9qlgZfa9MbiDlK+tYv3oWlvme+cYX6VR02oIAXvkccC+cx6ZPUKT8uudz+xHWno0o3uXnTAIDwvoMPzyE6RCXZ0aNDFXK1s8NCeMUG3d0jqOIhrLS4Gx3dbOg0DIm7atFZSA3/Dt1Ay39xdEVgZNuausTRRFaq+HuVvHdaKrKoewNvPK2cMoA+pDnj2OBN//6KaY1GC/V7j7MgpAvwMfbH1SvFBUSdUIs9/IfNRuPs8uA6ShCZNPMTzW77uQ2CmQO0SsaFsjnz9LjFd/CLRPikzqtay4HEcCNhdE6Jq6SzKzZlE+A4r9/xMwBM3opTyBmYuBxECmXQg9Gfd5/x//yP9gCHTcQlxzduXEIOok5uYRY4l/QGLHL/z/xlm2vAf9i1iHoLs7d2QjZ93IYV0Ff4W12xK5c2LeDOFSpBqfxJrTuR4FhRB9cnczibFqFKuGLIOx7yqk5gH5UIvZK4QmOzYUZQ96Wl55DTeldO3Xr8= chiedudibia4chr@ip-172-31-22-76"
}
