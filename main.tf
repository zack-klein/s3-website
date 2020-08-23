resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name
  policy = templatefile(
    "./modules/s3-website/policy.json",
    {
      bucket                            = var.bucket_name
      cloudfront_origin_access_identity = aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn
    }
  )

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}
