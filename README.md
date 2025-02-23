# Terraform AWS PostgreSQL RDS with VPC

## Overview
This Terraform project provisions an AWS environment with:
- A **custom VPC** with public and private subnets.
- A **PostgreSQL RDS instance** inside a private subnet.
- Security groups to allow necessary traffic.

## Steps to Implement PostgreSQL RDS in a Custom VPC
- Create a VPC
- Create Subnets (Public & Private)
- Set Up an Internet Gateway & Route Table
- Create a Security Group for RDS
- Deploy an RDS PostgreSQL Instance
- Output the RDS Endpoint
