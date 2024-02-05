output "bucket_name" {
  value = module.s3.bucket_name
}

output "bucket_arn" {
  value = module.s3.bucket_arn
}

output "bucket_domain_name" {
  value = module.s3.bucket_domain_name
}

output "allowed_ips_file_path" {
  value = module.s3.allowed_ips_file_path
}

output "instance_key_name" {
  value = module.ec2.instance_key_name
}

output "instance_arn" {
  value = module.ec2.instance_arn
}

output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}

output "instance_private_ip" {
  value = module.ec2.instance_private_ip
}
