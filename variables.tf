
variable "environment" {
  description = ""
  type        = string
  default     = "non-prod"
}

variable "name" {
  description = ""
  type        = string
  default     = "ELBDomainDiscovery"
}

variable "skip_tag" {
  description = "ELB Tag key for skip discovery"
  type        = string
  default     = "SkipDomainDiscovery"
}

variable "regions" {
  description = "List of regions for Domain Discovery"
  type        = list(string)
  default     = ["us-east-1"]
}

variable "types" {
  description = "List of types of ELB"
  type        = list(string)
  default     = ["application"]
}

variable "api_url" {
  type    = string
  default = "https://import.emtool.org/v1/domains/import/"
}

variable "api_token" {
  type    = string
  default = ""
}

variable "_source" {
  type    = string
  default = "ELB"
}

variable "gateid" {
  type    = string
  default = "6fff0855-803f-411e-be48-d78a69b82477"
}
