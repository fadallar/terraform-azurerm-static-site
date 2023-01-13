# Generic naming variables
variable "name_prefix" {
  description = "Optional prefix for the generated name"
  type        = string
  default     = ""
}

variable "name_suffix" {
  description = "Optional suffix for the generated name"
  type        = string
  default     = ""
}

variable "use_caf_naming" {
  description = "Use the Azure CAF naming provider to generate default resource name. `storage_account_custom_name` override this if set. Legacy default name is used if this is set to `false`."
  type        = bool
  default     = true
}

# Custom naming override
variable "custom_name" {
  description = "Custom Azure Static Site name, generated if not set"
  type        = string
  default     = ""
}

variable "workload_info" {
  description = "Workload additional info to be use in the resource name"
  type        = string
  default     = ""
}

variable "landing_zone_slug" {
  description = "Landing zone slug (acronym) usd in the resource name"
  type        = string
}
