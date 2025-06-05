variable "environment" {
  type        = string
  description = "Ambiente"
  default = "dev"
}

variable "aws_region" {
  type        = string
  description = "Região da AWS"
  default = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "Perfil da AWS"
  default = "terraform-dev"
}

variable "instance_ami" {
  type        = string
  description = "AMI da instância Ubuntu Server 24.04 LTS (HVM),EBS General Purpose (SSD) Volume Type. Support available from Canonical (http://www.ubuntu.com/cloud/services)."
  default = "ami-0731becbf832f281e"
}

variable "instance_type" {
  type        = string
  description = "Tipo de instância"
  default = "t3.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = "Tags da instância"
  default = {
    Name    = "Ubuntu 24.04 LTS"
    Project = "AWS com Terraform - Terraform 01"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}