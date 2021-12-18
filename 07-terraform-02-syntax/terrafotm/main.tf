provider "aws" {
  region = "eu-west-3"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name        = "tf-example"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id     = aws_subnet.my_subnet.id
  private_ips   = ["172.16.10.100"]

  tags = {
    Name        = "primary_network_interface"
  }
}

resource "aws_security_group_rule" "local_access" {
  type          = "ingress"
  description   = "Local access"
  from_port   = 0
  to_port     = 65535
  protocol    = "tcp"
  cidr_blocks = ["172.16.10.0/24"]
  security_group_id = "sg-0842982df285a7456"
}


data "aws_caller_identity" "current" {}


data "aws_region" "current" {}
