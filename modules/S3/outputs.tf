output "bucket_name" {
  description = "the name of the bucket"
  value = aws_s3_bucket.this.bucket
}

output "bucket_regional_domain_name" {
  value = aws_s3_bucket.this.bucket_regional_domain_name
}

output "s3_origin_id" {
  value = "${aws_s3_bucket.this.bucket}-origin"
}

output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.this.website_endpoint
}

output "arn" {
  value = aws_s3_bucket.this.arn
}