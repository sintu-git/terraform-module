#create variable for az

variable "az_list" {
  description = "availability zone"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

# variable for ami
variable "ami_map" {
  description = "type of ami"
  type        = map(string)
  default = {
    dev  = "ami-05c3dc660cb6907f0"
    qa   = "ami-0862be96e41dcbf74"
    prod = "ami-0aa8fc2422063977a"
  }
}

#variable for ec2 instance
variable "instance_type_list" {
  description = "type of instance"
  type        = list(string)
  default     = ["t2.micro", "t3.small", "t3.large"]
}

#variable for tags
variable "ec2-tags" {
  description = "tags for instance name"
  type        = map(string)
  default = {
    dev  = "Development"
    qa   = "Acceptance"
    prod = "Production"
  }
}

#create vpc id
variable "vpc" {
  description = "creating vpc for"
  type = list(string)
  default = ["192.168.0.0/16", "10.0.0.0/16"]
}

variable "subnet" {
  description = "creating subnet"
  type = list(string)
  default = ["192.168.1.0/24", "192.168.2.0/24", "192.168.4.0/24"]
}

variable subnet-tags {
  description = "taging for subnet"
  type = list(string)
  default = ["private-subnet", "my-subnet", "subnet-1"]
}

variable vpc-tags {
  description = "taging for vpc"
  type = map(string)
  default = {
   dev = "my-terr-vpc"
   qa = "Acceptance-vpc"    
  }
}
