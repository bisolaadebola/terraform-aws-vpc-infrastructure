
output "vpc_id" {
  description = "ID of the Terraform VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = [
    aws_subnet.public_1a.id,
    aws_subnet.public_1b.id
  ]
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value = [
    aws_subnet.private_1a.id,
    aws_subnet.private_1b.id
  ]
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_ids" {
  description = "IDs of the NAT Gateways"
  value = [
    aws_nat_gateway.nat_1a.id,
    aws_nat_gateway.nat_1b.id
  ]
}

output "ec2_instance_1_id" {
  description = "ID of EC2 instance 1"
  value       = aws_instance.web_server_1.id
}

output "ec2_instance_2_id" {
  description = "ID of EC2 instance 2"
  value       = aws_instance.web_server_2.id
}

output "ec2_private_ip_1" {
  description = "Private IP of EC2 instance 1"
  value       = aws_instance.web_server_1.private_ip
}

output "ec2_private_ip_2" {
  description = "Private IP of EC2 instance 2"
  value       = aws_instance.web_server_2.private_ip
}

