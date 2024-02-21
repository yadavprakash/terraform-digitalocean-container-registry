output "id" {
  description = "The ID of the container registry."
  value       = module.container-registry.id
}

output "name" {
  description = "The name of the container registry."
  value       = module.container-registry.name
}

output "subscription_tier_slug" {
  description = "The slug representing the subscription tier of the container registry."
  value       = module.container-registry.subscription_tier_slug
}

output "region" {
  description = "The region where the container registry is located."
  value       = module.container-registry.region
}

output "endpoint" {
  description = "The endpoint URL of the container registry."
  value       = module.container-registry.endpoint
}

output "server_url" {
  description = "The URL of the container registry server."
  value       = module.container-registry.server_url
}

output "storage_usage_bytes" {
  description = "The total storage usage in bytes in the container registry."
  value       = module.container-registry.storage_usage_bytes
}

output "created_at" {
  description = "The timestamp when the container registry was created."
  value       = module.container-registry.created_at
}

output "expiry_seconds" {
  description = "The number of seconds until the container registry expires."
  value       = module.container-registry.expiry_seconds
}
