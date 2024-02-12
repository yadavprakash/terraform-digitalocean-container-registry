output "id" {
  value       = join("", digitalocean_container_registry.test[*].id)
  description = "The id of the container registry"
}

output "name" {
  value       = join("", digitalocean_container_registry.test[*].name)
  description = "The name of the container registry"
}

output "subscription_tier_slug" {
  value       = join("", digitalocean_container_registry.test[*].subscription_tier_slug)
  description = "The slug identifier for the subscription tier."
}

output "region" {
  value       = join("", digitalocean_container_registry.test[*].region)
  description = "The slug identifier for the region."
}

output "endpoint" {
  value       = join("", digitalocean_container_registry.test[*].endpoint)
  description = "The URL endpoint of the container registry. Ex: registry.digitalocean.com/my_registry."
}

output "server_url" {
  value       = join("", digitalocean_container_registry.test[*].server_url)
  description = "The domain of the container registry. Ex: registry.digitalocean.com."
}

output "storage_usage_bytes" {
  value       = join("", digitalocean_container_registry.test[*].storage_usage_bytes)
  description = "The amount of storage used in the registry in bytes."
}

output "created_at" {
  value       = join("", digitalocean_container_registry.test[*].created_at)
  description = "The date and time when the registry was created."
}

output "expiry_seconds" {
  value       = join("", digitalocean_container_registry_docker_credentials.example[*].expiry_seconds)
  description = "Number of seconds after creation for token to expire"
}
