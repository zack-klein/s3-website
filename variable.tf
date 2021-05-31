variable "bucket_name" {
  type = string
}

variable "acm_arn" {
  type = string
}

variable "restriction_type" {
  type        = string
  default     = "none"
  description = "Whitelist/blacklist traffic to your site."
}

variable "locations" {
  type        = list(string)
  default     = []
  description = "A list of locations to include in the restriction."
}
