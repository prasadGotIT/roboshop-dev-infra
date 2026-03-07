data "aws_cloudfront_cache_policy" "cachingOptimised" {
    name = "Managed-CachingOptimised"
}

data "aws_cloudfront_cache_policy" "cachingOptimised" {
    name = "Managed-CachingDisabled"
}

data "aws_ssm_parameter" "certificate_arn" {
  name = "/${var.project_name}/${var.environment}/certificate_arn"
}