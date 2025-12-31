variable "cloudfront_arn" {
  description = "CloudFront distribution ARN"
  type        = string
}

variable "enable_waf" {
  description = "Enable WAF"
  type        = bool
  default     = true
}
