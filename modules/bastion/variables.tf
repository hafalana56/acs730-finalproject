# variables.tf

variable "ami" {
  type        = string
  description = "Instance AMI"
}

variable "instance_type" {
  type        = string
  description = "Instance AMI"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "VPC Security group ids"
}

variable "subnet_id" {
  type        = list(string)
  description = "Subnet id"
}

variable "instance_name_prefix" {
  type        = string
  description = "bastion instance name prefix"
}


variable "associate_public_ip_address" {
  type        = bool
  description = "Whether to associate public ip address to instance"
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "environment_prefix" {
  type        = string
  description = "Environment Type"
}

variable "group" {
  type        = string
  description = "Group to generate names of resources"
}

variable "aws_ssh_key_name" {
  type        = string
  description = "AWS SSH Key pair public half"
  
}