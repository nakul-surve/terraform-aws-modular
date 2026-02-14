# environments/dev/variables.tf

variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Free tier eligible
}

variable "min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
  default     = 1  # Lower for dev environment
}

variable "max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
  default     = 2  # Lower for dev environment
}

variable "desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
  default     = 1  # Lower for dev environment
}
