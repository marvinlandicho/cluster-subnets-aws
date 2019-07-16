variable "name" {
  type        = "string"
  description = "The prefix name for subnets."
}

variable "vpc_id" {
  type        = "string"
  description = "The VPC used to host the subnets."
}

variable "cidr_blocks" {
  type        = "list"
  description = "List of CIDR blocks to allocate in the VPC."
  default     = []
}

variable "zones" {
  type        = "list"
  description = "List of AZ used to create the subnets."
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "tags" {
  type        = "map"
  description = "Extra tags to add on the created subnets."
  default     = {}
}

variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
}
