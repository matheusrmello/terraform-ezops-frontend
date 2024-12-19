data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions   = ["s3:*"]
    resources = ["${aws_s3_bucket.cloudfront_bucket.arn}/*", "${aws_s3_bucket.cloudfront_bucket.arn}"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.cloudfront_origin_access_identity.iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  bucket = aws_s3_bucket.cloudfront_bucket.id
  policy = data.aws_iam_policy_document.s3_policy.json
}

resource "aws_s3_bucket" "cloudfront_bucket" {
  bucket = "test-matheus-cloudfront"

  tags = {
    Name = "test-matheus-cloudfront"
  }
}


resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.cloudfront_bucket.id

  block_public_acls       = true
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}