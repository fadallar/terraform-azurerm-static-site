variable "default_tags_enabled" {
  description = "Option to enable or disable default tags."
  type        = bool
  default     = true
}

variable "default_tags" {
  description = "Default Base tagging"
  type        = map(string)
  default     = {}
}

variable "extra_tags" {
  description = "Extra tags to add."
  type        = map(string)
  default     = {}
}

#variable "owner" {
#  description = "Tag - Technical Owner."
#  type        = string
#  default     = ""
#}
#
#variable "spoc" {
#  description = "Tag - Financial Owner - Required for Cloud financial management."
#  type        = string
#}
#
#variable "costcenter" {
#  description = "Tag - Cost Center associated with the workload "
#  type        = string
#  default = ""
#}
#
#variable "change" {
#  description = "Tag - Snow change request"
#  type        = string
#  default = ""
#}