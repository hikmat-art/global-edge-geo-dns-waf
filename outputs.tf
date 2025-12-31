output "cloudfront_domain" {
  description = "CloudFront distribution domain"
  value       = module.edge.cloudfront_domain
}

output "waf_arn" {
  description = "WAF ARN"
  value       = module.waf.waf_arn
}

output "dns_zone_id" {
  description = "Route 53 hosted zone ID"
  value       = module.dns.zone_id
}
