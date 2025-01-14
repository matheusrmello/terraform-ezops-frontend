data "aws_route53_zone" "zone" {
  name         = "mrmello.com.br."
  private_zone = false
}

resource "aws_route53_record" "alias_route53_record" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "test-matheus"
  type    = "CNAME"
  ttl     = 300
  records = [aws_cloudfront_distribution.s3_distribution.domain_name]
}