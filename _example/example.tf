provider "digitalocean" {

}

locals {
  name        = "test232"
  environment = "test"
  region      = "nyc3"
}

##-----------------------------------------------------------------------------
#Description : module by container registry.
##-----------------------------------------------------------------------------

module "container-registry" {
  source                 = "./../"
  name                   = local.name
  environment            = local.environment
  subscription_tier_slug = "starter"
  region                 = local.region
  write                  = false
  expiry_seconds         = 1576800000
}