resource "aws_s3_bucket" "b" {
  bucket        = "default-prod-terraform-state"
  acl           = "private"
  force_destroy = false

  versioning {
    enabled    = true
    mfa_delete = false
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "t" {
  name           = "default-prod-terraform-state-locks"
  read_capacity  = 2
  write_capacity = 2

  # https://www.terraform.io/docs/backends/types/s3.html#dynamodb_table
  hash_key = "LockID"

  server_side_encryption {
    enabled = true
  }

  lifecycle {
    ignore_changes = ["read_capacity", "write_capacity"]
  }

  attribute {
    name = "LockID"
    type = "S"
  }
}
