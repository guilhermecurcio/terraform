resource "aws_instance" "my-test-instance" {
  ami           = local.instance_ami
  instance_type = local.instance_type
  tags = merge(local.tags, {
    "Name" = "gc-my-test-instance",
  })
}
