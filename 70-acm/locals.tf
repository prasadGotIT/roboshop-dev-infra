locals {
  ami_id = data.aws_ami.terraform.id
  common_name_suffix = " ${var.project_name}-${var.environment}"
  common_tags = {
    project = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}