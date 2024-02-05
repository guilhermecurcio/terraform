locals {
  tags = merge(var.tags, {
    "UpdatedAt" = "2024-02-04"
  })
  instance_ami  = "ami-00dbf01ec2a2a2cc3"
  instance_type = "t2.micro"
}
