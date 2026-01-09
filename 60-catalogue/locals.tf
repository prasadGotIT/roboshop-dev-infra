locals {
  ami_id = data.aws_ami.terraform.id
  common_name_suffix = " ${var.project_name}-${var.environment}"
  private_subnet_id  = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  common_tags = {
    project = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}