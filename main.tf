# Root orchestration file
# Calls modules for DNS, Edge, WAF, Network, and App

module "dns" {
  source      = "./modules/dns"
  root_domain = var.root_domain
}

module "edge" {
  source      = "./modules/edge"
  root_domain = var.root_domain
  enable_logs = var.enable_logs
}

module "waf" {
  source   = "./modules/waf"
  enable_waf = var.enable_waf
  depends_on = [module.edge]
}

module "network_us" {
  source = "./modules/network"
  region = "us-east-1"
}

module "app_us" {
  source = "./modules/app"
  region = "us-east-1"
  vpc_id = module.network_us.vpc_id
}

module "network_ap" {
  source = "./modules/network"
  region = "ap-south-1"
}

module "app_ap" {
  source = "./modules/app"
  region = "ap-south-1"
  vpc_id = module.network_ap.vpc_id
}
