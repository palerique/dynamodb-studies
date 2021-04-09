resource "aws_dynamodb_table" "dragon_bonus_attack" {
  name           = "dragon_bonus_attack"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "breath_attack"
  range_key      = "range"

  attribute {
    name = "breath_attack"
    type = "S"
  }
  attribute {
    name = "range"
    type = "N"
  }
}
resource "aws_dynamodb_table" "dragon_current_power" {
  name           = "dragon_current_power"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "game_id"

  attribute {
    name = "game_id"
    type = "S"
  }
}
resource "aws_dynamodb_table" "dragon_family" {
  name           = "dragon_family"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "family"

  attribute {
    name = "family"
    type = "S"
  }
}
resource "aws_dynamodb_table" "dragon_stats" {
  name           = "dragon_stats"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "dragon_name"

  attribute {
    name = "dragon_name"
    type = "S"
  }
}
resource "aws_dynamodb_table" "sessions" {
  name           = "sessions"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "session_id"
  range_key      = "user_name"

  attribute {
    name = "session_id"
    type = "S"
  }
  attribute {
    name = "user_name"
    type = "S"
  }
  ttl {
    attribute_name = "expiration_time"
    enabled        = true
  }
}
resource "aws_dynamodb_table" "users" {
  name           = "users"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "user_name"

  attribute {
    name = "email_address"
    type = "S"
  }
  attribute {
    name = "user_name"
    type = "S"
  }
  global_secondary_index {
    name            = "email_index"
    hash_key        = "email_address"
    read_capacity   = 0
    write_capacity  = 0
    projection_type = "INCLUDE"
    non_key_attributes = [
    "password"]
  }
}
