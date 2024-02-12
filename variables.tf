variable "name" {
  type        = string
  default     = ""
  description = "The name of the container_registry"
}

variable "subscription_tier_slug" {
  type        = string
  default     = ""
  description = "The slug identifier for the subscription tier to use (starter, basic, or professional)"
}

variable "region" {
  type        = string
  default     = ""
  description = "The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically."
}

variable "write" {
  type        = bool
  default     = false
  description = "Allow for write access to the container registry. Defaults to false."

}

variable "environment" {
  type        = string
  default     = ""
  description = "Label order, e.g. `name`,`application`."
}

variable "label_order" {
  type        = list(string)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "expiry_seconds" {
  type        = number
  default     = 1576800000
  description = "The amount of time to pass before the Docker credentials expire in seconds."
}