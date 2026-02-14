# environments/dev/outputs.tf

output "alb_url" {
  description = "URL of the Application Load Balancer"
  value       = "http://${module.webserver.alb_dns_name}"
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnets" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "asg_name" {
  description = "Auto Scaling Group name"
  value       = module.webserver.asg_name
}
