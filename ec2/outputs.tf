output "instance_arn" {
  value = aws_instance.my-test-instance.id
}

output "instance_public_ip" {
  value = aws_instance.my-test-instance.public_ip
}

output "instance_private_ip" {
  value = aws_instance.my-test-instance.private_ip
}

output "instance_key_name" {
  value = aws_instance.my-test-instance.key_name
}
