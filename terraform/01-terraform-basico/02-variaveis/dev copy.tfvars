aws_region    = "us-east-1"
aws_profile   = "terraform-dev"
instance_ami  = "ami-0731becbf832f281e"
instance_type = "t3.micro"
Environment = "Dev"
instance_tags = {
    Name    = "Ubuntu 24.04 LTS"
    Project = "AWS com Terraform - Terraform 01"
    Environment = "Dev"
    Managedby = "Terraform"
}
