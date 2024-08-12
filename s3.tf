resource "aws_s3_bucket" "state_store" {
  bucket        = "mubeentech.shop"
  force_destroy = true
}