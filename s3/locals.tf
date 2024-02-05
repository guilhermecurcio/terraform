locals {
  acl_private      = "private"
  object_ownership = "BucketOwnerPreferred"
  tags = merge(var.tags, {
    "UpdatedAt" = "2024-02-04"
  })
  ip_filename = "allowed-ips.txt"
}
