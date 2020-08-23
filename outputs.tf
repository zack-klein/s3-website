output "cloudfront_distribution" {
  value = aws_cloudfront_distribution.cloudfront_distribution
}

output "s3_bucket" {
  value = aws_s3_bucket.b
}
