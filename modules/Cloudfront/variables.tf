variable "s3_origin_id" {
  type = string
}

variable "bucket_regional_domain_name" {
  type = string
}

variable "bucket_name" {
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