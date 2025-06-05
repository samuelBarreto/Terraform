locals {
  ip_filepath = "ips.json"

  common_tags = {
    Name      = "Bucket ${var.environment}"
    Managedby = "Terraform"
    Owner     = "SAMUEL C. ANDRADE"
  }
}