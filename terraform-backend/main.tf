data "aws_caller_identity" "current" {}

module "backend_bucket" {
  source      = "git@github.com:curtrube/tf-aws-s3.git"
  bucket_name = "terraform-state-${data.aws_caller_identity.current.account_id}"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock-${data.aws_caller_identity.current.account_id}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
