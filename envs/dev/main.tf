# Dev environment entry point
# Calls root modules with dev-specific overrides

module "dns" {
  source      = "../../modules/dns"
  root_domain = var.root_domain
  us_endpoint = module.app_us.alb_dns_name
  us_zone_id  = module.app_us.alb_zone_id
  ap_endpoint = module.app_ap.alb_dns_name
  ap_zone_id  = module.app_ap.alb_zone_id
}

module "edge" {
  source        = "../../modules/edge"
  origin_domain = module.app_us.alb_dns_name
  acm_cert_arn  = var.acm_cert_arn
  log_bucket    = var.log_bucket
}

module "waf" {
  source        = "../../modules/waf"
  cloudfront_arn = module.edge.cloudfront_domain
}

module "network_us" {
  source = "../../modules/network"
  region = "us-east-1"
}

module "app_us" {
  source         = "../../modules/app"
  region         = "us-east-1"
  vpc_id         = module.network_us.vpc_id
  public_subnets = module.network_us.public_subnets
}

module "network_ap" {
  source = "../../modules/network"
  region = "ap-south-1"
}

module "app_ap" {
  source         = "../../modules/app"
  region         = "ap-south-1"
  vpc_id         = module.network_ap.vpc_id
  public_subnets = module.network_ap.public_subnets
}
