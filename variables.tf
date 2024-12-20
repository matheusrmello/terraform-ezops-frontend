variable "provider_region" {
  description = "The cloud provider to use"
  type        = string
  default     = "us-east-2"

}

# variable "s3_bucket" {
#   description = "Bucket S3"
#   type        = string
# }

# variable "cdn_domain" {
#   description = "Domain CDN"
#   type        = string
# }

# variable "route53_zone_domain" {
#   description = "Domain zone of Route53"
# }

# variable "cloudfront_allowed_methods" {
#   default = ["GET", "HEAD", "OPTIONS"]
#   type    = list(string)
# }

# variable "cloudfront_cached_methods" {
#   default = ["GET", "HEAD", "OPTIONS"]
#   type    = list(string)
# }

# variable "cloudfront_default_root_object" {
#   default = "index.html"
#   type    = string
# }

# variable "cloudfront_http_version" {
#   default = "http2"
#   type    = string
# }

# variable "service" {
#   type        = string
#   description = "Service name"
# }

# variable "route53_private_zone" {
#   default = false
#   type    = bool
# }