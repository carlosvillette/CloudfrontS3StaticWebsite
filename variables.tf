variable "region" {
  type = string
  default = "us-east-1"
}

variable "s3_name" {
  description = "Name of the S3 bucket"
  type = string
}

variable "index_document" {
  description = "the html file that will be used for the static website"
  type = string
  default = "index.html"
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

variable "default_root_object" {
  type = string
  default = "index.html"
}

variable "minimum_protocol_version" {
  type = string
  default = "TLSv1.2_2021"
}

variable "price_class" {
  type = string
  default = "PriceClass_100" # only available in N. America, Europe, and Israel with this price class
}