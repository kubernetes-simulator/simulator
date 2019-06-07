
variable "region" {
  description = "aws region"
  default = "eu-west-1"
}

variable "shared_credentials_file" {
  description = "location of aws credentials file"
}

variable "aws_profile" {
  description = "aws profile"
  default = "default"
}

variable "access_key" {
  description = "ssh public key"
}

variable "vpc_cidr" {
  description = "cidr block for vpc"
  default = "172.31.0.0/16"
}

variable "access_cidr" {
  description = "cidr range of client connection"
}

variable "public_subnet_cidr" {
  description = "cidr range for public subnet"
  default = "172.31.1.0/24"
}

variable "private_subnet_cidr" {
  description = "cidr range for private subnet"
  default = "172.31.2.0/24"
}

variable "ami_id" {
  description = "ami to use with Bastion host"
  default = "ami-09d38086eb2b23925"
}

variable "instance_type" {
  description = "instance type for Baston host"
  default = "t1.micro"
}

variable "controlplane_instance_type" {
  description = "instance type for k8s controlplane host"
  default = "t1.micro"
}

variable "number_of_controlplane_instances" {
  description = "number of control plane VMs to create"
  default = "1"
}

variable "private_avail_zone" {
  description = "availability zone for private subnet"
  default = "eu-west-1a"
}

variable "public_avail_zone" {
  description = "availability zone for public subnet"
  default = "eu-west-1a"
}

