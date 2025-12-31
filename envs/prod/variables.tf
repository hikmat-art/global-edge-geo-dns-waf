variable "root_domain" {
  description = "Root domain for prod environment"
  type        = string
  default     = "example.com"
}

variable "acm_cert_arn" {
  description = "ACM certificate ARN for CloudFront"
  type        = string
}

variable "log_bucket" {
  description = "S3 bucket for CloudFront logs"
  type        = string
}
