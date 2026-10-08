# Deployment Guide

## Overview

This project uses **Terraform** to provision and manage a multi-AZ AWS infrastructure environment as Infrastructure as Code (IaC).

The deployment includes networking, NAT Gateways, security groups, EC2 instances, and RDS.

## Prerequisites

* AWS account
* AWS CLI configured
* Terraform installed
* Git installed

Verify the setup:

```bash
terraform -version
aws sts get-caller-identity
```

## Deployment Steps

### 1. Initialize Terraform

```bash
terraform init
```

Initializes the project and downloads the required AWS provider.

### 2. Validate Configuration

```bash
terraform fmt
terraform validate
```

Formats the configuration and verifies that it is valid.

### 3. Review the Infrastructure Plan

```bash
terraform plan
```

Reviews the AWS resources Terraform will create before deployment.

### 4. Deploy Infrastructure

```bash
terraform apply
```

Confirm with `yes` when prompted.

Terraform provisions the configured AWS resources, including:

* VPC and multi-AZ subnets
* Internet Gateway
* NAT Gateways
* Route tables and associations
* Security groups
* EC2 instances
* RDS database

### 5. Verify Deployment

```bash
terraform state list
terraform output
```

Use the AWS Console to confirm that the infrastructure is running as expected.

## Infrastructure Workflow

```text
Terraform Configuration
        ↓
terraform init
        ↓
terraform validate
        ↓
terraform plan
        ↓
terraform apply
        ↓
Verify AWS Infrastructure
```

## Updating Infrastructure

When the configuration changes:

```bash
terraform plan
terraform apply
```

Terraform identifies the required changes and updates the AWS environment accordingly.

## Cleanup

When the environment is no longer required:

```bash
terraform destroy
```

This removes the infrastructure managed by Terraform.

## Key Outcome

This deployment demonstrates the use of **Terraform and AWS to build repeatable, scalable, and version-controlled infrastructure**, reducing reliance on manual AWS Console configuration.
