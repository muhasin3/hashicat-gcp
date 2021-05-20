module "network" {
  source  = "app.terraform.io/muhasin-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "muhasin-network"
  project_id = var.project

  subnets = [
  {
    subnet_name   = "muhasin-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]

}