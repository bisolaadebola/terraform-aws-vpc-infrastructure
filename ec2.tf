resource "aws_instance" "web_server_1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  subnet_id = aws_subnet.private_1a.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  key_name = var.key_name

  associate_public_ip_address = false

  tags = {
    Name = "terraform-web-server-1"
  }
}

resource "aws_instance" "web_server_2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  subnet_id = aws_subnet.private_1b.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  key_name = var.key_name

  associate_public_ip_address = false

  tags = {
    Name = "terraform-web-server-2"
  }
}