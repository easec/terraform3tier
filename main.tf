module "networking" {
  source    = "./modules/networking"
  project   = var.project
} 

  module "database" {
  source    = "./modules/database"
  project = var.project

  vpc = module.networking.vpc
  sg  = module.networking.sg
}
