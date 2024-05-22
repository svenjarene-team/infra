provider "cloudflare" {
  api_token = var.cloudflare_token
}

data "cloudflare_zones" "domain" {
  filter {
    name = var.site_domain
  }
}

resource "cloudflare_record" "test" {
  zone_id = data.cloudflare_zones.domain.zones[0].id
  name    = "test"
  value   = "203.0.113.10"
  type    = "A"
  proxied = true
}


