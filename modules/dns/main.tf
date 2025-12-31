resource "aws_route53_zone" "root" {
  name = var.root_domain
}

# Example geolocation records
resource "aws_route53_record" "us_record" {
  zone_id = aws_route53_zone.root.zone_id
  name    = var.root_domain
  type    = "A"

  geo_location {
    country = "US"
  }

  alias {
    name                   = var.us_endpoint
    zone_id                = var.us_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "ap_record" {
  zone_id = aws_route53_zone.root.zone_id
  name    = var.root_domain
  type    = "A"

  geo_location {
    country = "IN"
  }

  alias {
    name                   = var.ap_endpoint
    zone_id                = var.ap_zone_id
    evaluate_target_health = true
  }
}
