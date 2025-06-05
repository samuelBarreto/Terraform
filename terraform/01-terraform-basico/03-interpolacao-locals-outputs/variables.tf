variable "aws_region" {
  type        = string
  description = "Região da AWS"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "Perfil da AWS"
  default     = "terraform-dev"
}

variable "environment" {
  type        = string
  description = "Ambiente"
  default     = "dev"
}


