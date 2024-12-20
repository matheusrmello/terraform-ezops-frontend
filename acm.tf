resource "aws_acm_certificate" "acm_cert" {
  provider          = aws.us_east_1
  domain_name       = "exam.ezopscloud.tech"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "test-matheus-cloudfront-cert"
  }
}

resource "aws_acm_certificate_validation" "acm_cert_validation" {
  provider                = aws.us_east_1
  certificate_arn         = aws_acm_certificate.acm_cert.arn
  validation_record_fqdns = [for record in aws_route53_record.cert_validation : record.fqdn]
}