# environments/prod/variables.tf

variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "prod"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.1.0.0/16"  # Different CIDR from dev
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"  # More powerful for production
}

variable "min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
  default     = 2  # Higher for production availability
}

variable "max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
  default     = 6  # Higher for production scaling
}

variable "desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
  default     = 2  # Higher for production availability
}
