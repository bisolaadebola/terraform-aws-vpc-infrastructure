# Architecture

## Overview

This project provisions a **multi-AZ AWS infrastructure environment using Terraform**.

The architecture demonstrates network segmentation, secure connectivity, high availability, and Infrastructure as Code.

## Architecture Components

* **VPC** – Provides the isolated AWS network.
* **Public Subnets** – Host internet-facing resources such as EC2 instances.
* **Private Subnets** – Provide isolated network space for internal resources.
* **Internet Gateway** – Enables internet connectivity for public resources.
* **NAT Gateways** – Allow private resources to access the internet without being directly exposed.
* **Route Tables** – Control traffic between subnets and external networks.
* **Security Groups** – Control inbound and outbound traffic to AWS resources.
* **EC2 Instances** – Provide compute capacity for the application workload.

## Network Design

The VPC is distributed across multiple **Availability Zones** to provide redundancy and a foundation for highly available infrastructure.

```text
                         Internet
                            │
                    Internet Gateway
                            │
                    ┌───────┴───────┐
                    │      VPC      │
                    │               │
             ┌──────┴──────┐ ┌─────┴──────┐
             │ Availability │ │ Availability│
             │   Zone 1     │ │    Zone 2   │
             │              │ │             │
             │ Public       │ │ Public      │
             │ Subnet       │ │ Subnet     │
             │ EC2          │ │ EC2         │
             │              │ │             │
             │ Private      │ │ Private     │
             │ Subnet       │ │ Subnet     │
             │              │ │             │
             │ NAT Gateway  │ │ NAT Gateway │
             └──────────────┘ └─────────────┘
```

## Traffic Flow

### Public Resources

```text
Internet → Internet Gateway → Public Subnet → EC2
```

### Private Resources

```text
Private Subnet → NAT Gateway → Internet Gateway → Internet
```

## Infrastructure as Code

All infrastructure is defined in Terraform configuration files and managed through version control.

This approach provides:

* Repeatable deployments
* Consistent infrastructure
* Easier infrastructure changes
* Version-controlled configuration
* Reduced manual AWS Console configuration
* A foundation for scalable cloud environments

## Architecture Outcome

The completed architecture demonstrates practical knowledge of **AWS networking, security, compute, multi-AZ design, and Terraform Infrastructure as Code**.
