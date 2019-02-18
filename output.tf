output "s3_bucket_domain_name" {
  value       = "${aws_s3_bucket.b.bucket_domain_name}"
  description = "S3 bucket domain name"
}

output "s3_bucket_id" {
  value       = "${aws_s3_bucket.b.id}"
  description = "S3 bucket ID"
}

output "s3_bucket_arn" {
  value       = "${aws_s3_bucket.b.arn}"
  description = "S3 bucket ARN"
}

output "dynamodb_table_name" {
  value       = "${aws_dynamodb_table.t.name}"
  description = "DynamoDB table name"
}

output "dynamodb_table_id" {
  value       = "${aws_dynamodb_table.t.id}"
  description = "DynamoDB table ID"
}

output "dynamodb_table_arn" {
  value       = "${aws_dynamodb_table.t.arn}"
  description = "DynamoDB table ARN"
}
