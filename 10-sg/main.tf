/* module "catalogue" {
    source = "terraform-aws-modules/security-group/aws"
    name = "${local.common_name_suffix}-catalogue"
    use_name_prefix = false
    description = "security group for catalogue with custom ports open within vpc,egress all traffic"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
} */

module "sg" {

    source = "git::https://github.com/prasadGotIT/terraform-aws-sg.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mongodb"
    sg_description = "created for mongodb"
    vpc_id = local.vpc_id

}