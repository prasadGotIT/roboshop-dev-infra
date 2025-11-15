/* module "catalogue" {
    source = "terraform-aws-modules/security-group/aws"
    name = "${local.common_name_suffix}-catalogue"
    use_name_prefix = false
    description = "security group for catalogue with custom ports open within vpc,egress all traffic"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
} */

module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/prasadGotIT/terraform-aws-sg.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_names[count.index]
    sg_description = "created "
    vpc_id = local.vpc_id

}

  /* resource "aws_security_group_rule" "frontend_frontend_alb" {
    security_group_id = module.sg[9].sg_id
    source_security_group_id = module.sg[11].sg_id
    type = "ingress"
    from_port = 80
    protocol = "tcp"
    to_port = 80
  } */
    
