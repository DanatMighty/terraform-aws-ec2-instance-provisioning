variable "instance_types" {
  default = {
    "nano"  = "t3.nano"
    "micro" = "t3.micro"
    "small" = "t3.small"
    "large" = "t3.large"
  }
  type        = map(string)
  description = "A map of instance types"
}

variable "instance_name" {
  default = "DevOps_Test_server_TEMPORARY"
  type    = string
}

variable "aws_regions" {
  default     = ["ap-southeast-4", "ap-southeast-2", "us-east-1"]
  type        = list(string)
  description = "A list of AWS regions 0-2 AMIs are specific to region!"
}

variable "private_keyname" {
}