#create resource 
resource "aws_instance" "project01" {
  ami               = var.ami_map["qa"] # for map
  instance_type     = var.instance_type_list[1]
  availability_zone = var.az_list[0]

  tags = {
    Name = var.tags["qa"]
  }
}

#craete resource for 2
resource "aws_instance" "project-01" {
  ami               = var.ami_map["prod"] # for map
  instance_type     = var.instance_type_list[2]
  availability_zone = var.az_list[1]
  tags = {
    Name = var.tags["prod"]
  }
}

#craete resource for 3
resource "aws_instance" "project_01" {
  ami               = var.ami_map["dev"] # for map
  instance_type     = var.instance_type_list[0]
  availability_zone = var.az_list[2]
  tags = {
    Name = var.tags["dev"]
  }
}