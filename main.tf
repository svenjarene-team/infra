provider "cloudflare" {}

data "cloudflare_zones" "domain" {
  filter {
    name = var.site_domain
  }
}




