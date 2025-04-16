#Ec2 Instance Basic
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myinstance" {
ami = "ami-0a38b8c18f189761a"
instance_type   = "t3.micro"
key_name = "us-east-1-key"

  tags = {
    Name        = "suyash-instance"
  }
} 

#Ec2 Instance with Some Feature

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0c4e709339fa8521a"
  instance_type = "t3.micro"
  key_name      = "us-east-1-key"

  root_block_device {
    volume_size           = 20
    volume_type           = "gp2"
    delete_on_termination = true
  }

  vpc_security_group_ids = [aws_security_group.TF_SG.id]

  tags = {
    Name = "suyash-instance-01"
  }
}

resource "aws_security_group" "TF_SG" {
  name        = "Security using Terraform"
  description = "Security using Terraform"
  vpc_id      = "Vpc id No"
tags = {
    Name = "TF_SG"
  }

  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]  
  }

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]  
  }
  
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]  
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]  
  }

  



