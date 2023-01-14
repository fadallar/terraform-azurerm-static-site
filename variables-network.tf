variable "private_endpoint_subnet_id" {
  description = "Subnet Id the private endpoint is associated with. Required if private endpoint is used"
  type        = string
  default     = null
}

variable "private_dns_zone_ids" {
  description = "Static Site Private DNS Zone id. Required if private endpoint is enabled"
  type        = string
  default     = null
}

variable "enable_private_endpoint" {
  description = "Static Site Private DNS Zone id. Required if private endpoint is enabled"
  type        = bool
  default     = true
}
