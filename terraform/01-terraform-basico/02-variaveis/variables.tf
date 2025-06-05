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
  description = "AMI da instância"
  default = "ami-052cef01758351d37"
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
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}