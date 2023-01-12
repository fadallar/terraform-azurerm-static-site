variable "subnet_ids" {
  description = "Subnet Id used by the static site endpoint, required if private endpoint is enabled"
  type        = list(string)
  default     = []
}

variable "private_dns_zone_ids" {
  description = "Static Site Private DNS Zone id, required if private endpoint is enabled"
  type = string
  default = ""
}

variable "enable_private_endpoint" {
    description = "Static Site Private DNS Zone id, required if private endpoint is enabled"
    type = string
    default = ""
}
