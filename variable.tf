# Define variables

variable "instance_type" {
  description = "Type of EC2 instance (e.g., t2.micro)"
  type        = string
  default     = "t2.micro"
}

variable "key_pair" {
  description = "Key pair name for SSH access"
  type        = string
  default     = "terraform"
}

variable "storage_size" {
  description = "Size of the root EBS volume in gigabytes"
  type        = number
  default     = 8
}

variable "vpc_id" {
  description = "vpc"
  type        = string
  default     = "vpc-0ef83f8927852d448"
}
