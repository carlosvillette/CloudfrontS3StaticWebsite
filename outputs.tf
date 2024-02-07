output "cloudfront_url" {
  description = "Cloudfront URL"
  value       = "http://${aws_cloudfront_distribution.this.domain_name}"
}

output "cf_id" { 
  value = "${aws_cloudfront_distribution.this.id}"
  description = "The identifier for the distribution. For example: EDFDVBD632BHDS5."
}

output "cf_arn" {
  value = "${aws_cloudfront_distribution.this.arn}"
  description = "The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID."
}

output "cf_status" {
  value = "${aws_cloudfront_distribution.this.status}"
  description = "The current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system."
}