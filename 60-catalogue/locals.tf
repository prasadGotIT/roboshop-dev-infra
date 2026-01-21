locals {
  ami_id = data.aws_ami.terraform.id
  common_name_suffix = " ${var.project_name}-${var.environment}"
  private_subnet_id  = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  vpc_id = data.aws_ssm_paratmeter.vpc_id.value
  backend_alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
  common_tags = {
    project = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}