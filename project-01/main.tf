#create resource 
resource "aws_instance" "project01" {
  ami               = var.ami_map["qa"] # for map
  instance_type     = var.instance_type_list[1]
  availability_zone = var.az_list[0]
  subnet_id = 
  key_name = "linux-redhat"

  tags = {
    Name = var.ec2-tags["qa"]
  }
 user_data = <<-EOF
#!/bin/bash
hostnamectl set-hostname development
EOF
}

#creating vpc
resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc[0]

  tags = {
    Name = var.vpc-tags["qa"]
  }
}

#creating second vpc
resource "aws_vpc" "my-vpc1" {
  cidr_block = var.vpc[1]

  tags = {
    Name = var.vpc-tags["dev"]
  }
} 

#creating subnet
resource "aws_subnet" "my-subnet" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.subnet[1]

  tags = {
    Name = var.subnet-tags[2]
  }
}

resource "aws_subnet" "my-subnet1" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.subnet[2]

  tags = {
    Name = var.subnet-tags[1]
  }
}

resource "aws_subnet" "my-subnet-1" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.subnet[0]

  tags = {
    Name = var.subnet-tags[0]
  }
}
#craete resource for 2
/*resource "aws_instance" "project-01" {
  ami               = var.ami_map["prod"] # for map
  instance_type     = var.instance_type_list[2]
  availability_zone = var.az_list[1]
  key_pair = "linux-redhat"
  tags = {
    Name = var.tags["prod"]
  }
  user_date = <<EOF
#!/bin/bash
hostnamectl set-hostname production
  EOF
}

#craete resource for 3
resource "aws_instance" "project_01" {
  ami               = var.ami_map["dev"] # for map
  instance_type     = var.instance_type_list[0]
  availability_zone = var.az_list[2]
  key_pair = "linux-redhat"
  tags = {
    Name = var.tags["dev"]
  }

  user_date = <<EOF
#!/bin/bash
hostnamectl set-hostname development
 EOF 
}
*/