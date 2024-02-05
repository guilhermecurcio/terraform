
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "gc-my-test-bucket-${var.env}"
  tags = merge(local.tags, {
    "Name" = "gc-my-test-bucket"
  })
}

resource "aws_s3_bucket_public_access_block" "my-test-bucket-private-access-cfg" {
  bucket                  = aws_s3_bucket.my-test-bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "my-test-bucket-ownership-cfg" {
  bucket = aws_s3_bucket.my-test-bucket.id
  rule {
    object_ownership = local.object_ownership
  }
}

resource "aws_s3_bucket_acl" "my-test-bucket-acl" {
  depends_on = [
    aws_s3_bucket.my-test-bucket,
    aws_s3_bucket_public_access_block.my-test-bucket-private-access-cfg,
    aws_s3_bucket_ownership_controls.my-test-bucket-ownership-cfg
  ]
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = local.acl_private
}

resource "aws_s3_object" "allowed-ips" {
  depends_on = [aws_s3_bucket_acl.my-test-bucket-acl]
  bucket     = aws_s3_bucket.my-test-bucket.bucket
  key        = "config/${local.ip_filename}"
  source     = "s3/${local.ip_filename}"
  etag       = filemd5("s3/${local.ip_filename}")
}
