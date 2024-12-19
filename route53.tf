resource "aws_route53_record" "cert_validation" {
  provider = aws.default
  for_each = {
    for dvo in aws_acm_certificate.acm_cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      type   = dvo.resource_record_type
      record = dvo.resource_record_value
    }
  }

  zone_id = "Z08622851AKBHFB3GT1EP"
  name    = each.value.name
  type    = each.value.type
  ttl     = 300
  records = [each.value.record]
}