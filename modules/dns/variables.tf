variable "root_domain" {
  description = "Root domain name"
  type        = string
}

variable "us_endpoint" {
  description = "US endpoint (CloudFront or ALB)"
  type        = string
}

variable "us_zone_id" {
  description = "Zone ID for US endpoint"
  type        = string
}

variable "ap_endpoint" {
  description = "APAC endpoint (CloudFront or ALB)"
  type        = string
}

variable "ap_zone_id" {
  description = "Zone ID for APAC endpoint"
  type        = string
}
