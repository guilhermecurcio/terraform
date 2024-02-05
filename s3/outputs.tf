output "bucket_name" {
  value = aws_s3_bucket.my-test-bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.my-test-bucket.arn
}

output "bucket_domain_name" {
  value = aws_s3_bucket.my-test-bucket.bucket_domain_name
}

output "allowed_ips_file_path" {
  value = "${aws_s3_bucket.my-test-bucket.bucket}/${aws_s3_object.allowed-ips.key}"
}
