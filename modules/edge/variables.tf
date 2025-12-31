variable "origin_domain" {
  description = "Origin domain for CloudFront"
  type        = string
}

variable "acm_cert_arn" {
  description = "ACM certificate ARN for CloudFront"
  type        = string
}

variable "log_bucket" {
  description = "S3 bucket for CloudFront logs"
  type        = string
}

variable "enable_logs" {
  description = "Enable logging"
  type        = bool
  default     = true
}
