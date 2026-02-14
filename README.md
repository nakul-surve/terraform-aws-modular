A production-ready, modular Terraform infrastructure project that demonstrates industry best practices for deploying scalable web applications on AWS.

# Overview
This project showcases a modular Infrastructure as Code (IaC) approach using Terraform to provision a secure, scalable, and highly available web infrastructure on AWS. It follows the DRY  principle by organizing infrastructure into reusable modules.

What Gets Deployed

*VPC with public and private subnets across 2 Availability Zones
*Application Load Balancer (ALB) for traffic distribution
*Auto Scaling Group of EC2 instances running Nginx
*NAT Gateway for secure outbound internet access from private subnets
*Security Groups with least-privilege access (Port 80 only)
*CloudWatch Alarms for auto-scaling based on CPU utilization

# Network Design

*Public Subnets: Host the Application Load Balancer (internet-facing)
*Private Subnets: Host EC2 instances (no direct internet access)
*NAT Gateway: Allows private instances to download updates/patches
*Route Tables: Separate routing for public (via IGW) and private (via NAT) subnets

Cost-saving tips:

Use t2.micro for dev (free tier eligible)
Destroy dev environment when not in use
Set desired_capacity to 1 for dev
Enable auto-shutdown for non-business hours (not implemented here)

This project showcases essential DevOps and Cloud Engineering skills:
1. Modular Infrastructure as Code (IaC)

Organized code into reusable modules (vpc, webserver)
DRY principle applied across dev and prod environments
Clean separation of concerns

2. Remote State Management

S3 backend for centralized state storage
DynamoDB for state locking (prevents concurrent modifications)
Versioning enabled for state rollback capability

3. Network Architecture

Multi-AZ deployment for high availability
Public/private subnet design for security
NAT Gateway for secure internet access
Custom route tables and internet gateway configuration

4. Security Best Practices

Security groups with least-privilege access
EC2 instances in private subnets (no public IPs)
Only ALB is internet-facing
Encrypted S3 state storage

5. High Availability & Scalability

Application Load Balancer across multiple AZs
Auto Scaling Group with health checks
CloudWatch alarms for automatic scaling
Target group health monitoring

6. Environment Management

Separate configurations for dev and prod
Environment-specific variable tuning
Cost optimization (t2.micro for dev, t3.medium for prod)

7. Cloud Cost Optimization

Different instance types per environment
Smaller ASG capacity in dev (min: 1, max: 2)
Larger ASG capacity in prod (min: 2, max: 6)
Free tier awareness (t2.micro in dev)
