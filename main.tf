##-----------------------------------------------------------------------------
#Description : module by labels.
##-----------------------------------------------------------------------------

module "labels" {
  source      = "git::https://github.com/yadavprakash/terraform-digitalocean-labels.git?ref=v1.0.0"
  name        = var.name
  environment = var.environment
  label_order = var.label_order
}

##-----------------------------------------------------------------------------
#Description : resource by digitalocean_container_registry.
##-----------------------------------------------------------------------------

resource "digitalocean_container_registry" "test" {
  name                   = var.name                   #"testing232"
  subscription_tier_slug = var.subscription_tier_slug #"starter"
  region                 = var.region                 #"nyc3"
}

##-----------------------------------------------------------------------------
#Description : resource by digitalocean_container_registry_docker_credentials.
##-----------------------------------------------------------------------------

resource "digitalocean_container_registry_docker_credentials" "example" {
  registry_name  = join("", digitalocean_container_registry.test[*].name)
  write          = var.write          #false
  expiry_seconds = var.expiry_seconds #1576800000

}