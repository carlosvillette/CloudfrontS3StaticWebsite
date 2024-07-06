provider "aws" {
  region = var.region
}

terraform {

  backend "s3" {
    bucket = "carlosvillette-statefile-terraform-bucket"
    dynamodb_table = "state-lock"
    key = "global/mystatefile/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "policy" {
  source = "./modules/Policy"
  s3_arn = module.s3.arn
  cloudfront_distribution_arn = module.cloudfront.cloudfront_distribution_arn
}

module "s3" {
  source = "./modules/S3"
  s3_name = var.s3_name
  file_types = var.file_types
  index_document = var.index_document
  content_folder_name = var.content_folder_name
  content_types = var.content_types
  cloudfront_distribution_arn = module.cloudfront.cloudfront_distribution_arn
  policy = module.policy.policy_json
  path = path.module
}

module "cloudfront" {
  source = "./modules/Cloudfront"
  s3_origin_id = module.s3.s3_origin_id
  bucket_name = module.s3.bucket_name
  bucket_regional_domain_name = module.s3.bucket_regional_domain_name
}