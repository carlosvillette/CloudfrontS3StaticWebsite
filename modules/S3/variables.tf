variable "s3_name" {
  description = "Name of the S3 bucket"
  type = string
}

variable "index_document" {
  description = "the html file that will be used for the static website"
  type = string
}

variable "content_types" {
  description = "the different content types within the content/ folder"
  type = any
}

variable "file_types" {
  description = "The different file types in the content_folder_name variable in the format {doc,html,js, . . .}"
  type = string
}

variable "content_folder_name" {
  description = "The name of the folder that holds all content for the static website"
  type = string
}

variable "cloudfront_distribution_arn" {
  description = "the arn value for the cloudfront distribution"
  type = string
}

variable "policy" {
  description = "the policy for the s3 bucket"
  type = string
}

variable "path" {
  description = "path to the folder holding s3 assets"
  type = string
}