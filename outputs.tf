output "cloudfront_url" {
  description = "Cloudfront URL"
  value       = "http://${module.cloudfront.domain_name}"
}

output "cf_id" { 
  value = "${module.cloudfront.id}"
  description = "The identifier for the distribution. For example: EDFDVBD632BHDS5."
}

output "cf_arn" {
  value = "${module.cloudfront.cloudfront_distribution_arn}"
  description = "The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID."
}

output "cf_status" {
  value = "${module.cloudfront.status}"
  description = "The current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system."
}

output "s3_website_endpoint" {
  description = "S3 hosting URL (HTTP)"
  value       = "http://${module.s3.website_endpoint}"
}