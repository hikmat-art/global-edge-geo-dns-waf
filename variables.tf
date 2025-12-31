variable "aws_region" {
  description = "Default AWS region for global resources"
  type        = string
  default     = "us-east-1"
}

variable "root_domain" {
  description = "Root domain name for Route 53 hosted zone"
  type        = string
  default     = "example.com"
}

variable "enable_waf" {
  description = "Toggle to enable WAF"
  type        = bool
  default     = true
}

variable "enable_logs" {
  description = "Toggle to enable logging"
  type        = bool
  default     = true
}
