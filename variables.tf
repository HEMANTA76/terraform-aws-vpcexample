variable "tags" {
  default     = {}
  description = "(Optional) A map of tags to assign to the resource."
  type        = map(string)
}
variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  validation {
    condition     = can(cidrhost(var.cidr_block, 1))
    error_message = "CIDR block must be a valid CIRD range."
  }
}
variable "enable_dns_hostnames" {
  default     = false
  description = "(Optional A boolean flag to enable DNS hostnames in the VPC. Defaulted to false)"
  type        = bool
}
variable "enable_dns_support" {
  default     = true
  description = "(Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults to true."
  type        = bool
}
variable "name" {
  description = "VPC name."
  type        = string
}
variable "enable_internet_gatway" {
  default     = false
  description = "(Optional) A boolean flag to enable/disable the Internet Gateway. Defaults to false."
  type        = bool
}
variable "enable_nat_gateway" {
  type        = bool
  description = "(Optional) A boolean flag to enable/disable the NAT Gateway. Defaults to false."
  default     = false
  validation {
    condition     = var.enable_internet_gatway && var.enable_nat_gateway || !var.enable_nat_gateway
    error_message = "NAT requires internet gateways to be enabled"
  }

}

variable "subnets" {
  default     = {}
  description = "A map of subnets to create in the VPC"
  type = map(object({
    cidr_block        = string
    availability_zone = string
    public            = optional(bool, false)
  }))
}

