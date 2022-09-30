resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-table"
    Environment = "Prod"
  }
}
