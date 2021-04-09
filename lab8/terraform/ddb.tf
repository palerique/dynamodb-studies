resource "aws_dynamodb_table" "Music" {
  name           = "Music"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "Artist"
  range_key      = "SongTitle"

  attribute {
    name = "Artist"
    type = "S"
  }
  attribute {
    name = "SongTitle"
    type = "S"
  }
}
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
resource "aws_dynamodb_table" "improved_single_dragon_table" {
  name           = "improved_single_dragon_table"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "pk"
  range_key      = "sk"

  attribute {
    name = "bonus_description"
    type = "S"
  }
  attribute {
    name = "dragon_name"
    type = "S"
  }
  attribute {
    name = "location"
    type = "S"
  }
  attribute {
    name = "pk"
    type = "S"
  }
  attribute {
    name = "range"
    type = "N"
  }
  attribute {
    name = "sk"
    type = "S"
  }
  global_secondary_index {
    name            = "location_index"
    hash_key        = "sk"
    range_key       = "location"
    read_capacity   = 0
    write_capacity  = 0
    projection_type = "INCLUDE"
    non_key_attributes = [
      "family",
      "damage",
      "description",
      "protection",
    "dragon_name"]
  }
  global_secondary_index {
    name            = "bonus_description_index"
    hash_key        = "bonus_description"
    read_capacity   = 0
    write_capacity  = 0
    projection_type = "INCLUDE"
    non_key_attributes = [
    "pk"]
  }
  global_secondary_index {
    name            = "dragon_stats_index"
    hash_key        = "dragon_name"
    read_capacity   = 0
    write_capacity  = 0
    projection_type = "INCLUDE"
    non_key_attributes = [
      "family",
      "damage",
      "description",
    "protection"]
  }
  global_secondary_index {
    name            = "range_index"
    hash_key        = "sk"
    range_key       = "range"
    read_capacity   = 0
    write_capacity  = 0
    projection_type = "INCLUDE"
    non_key_attributes = [
    "pk"]
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
resource "aws_dynamodb_table" "single_dragon_table" {
  name           = "single_dragon_table"
  read_capacity  = 0
  write_capacity = 0
  hash_key       = "pk"

  attribute {
    name = "dragon_name"
    type = "S"
  }
  attribute {
    name = "pk"
    type = "S"
  }
  global_secondary_index {
    name            = "dragon_stats_index"
    hash_key        = "dragon_name"
    read_capacity   = 0
    write_capacity  = 0
    projection_type = "INCLUDE"
    non_key_attributes = [
      "family",
      "damage",
      "description",
    "protection"]
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
    name            = "email_admin_index"
    hash_key        = "email_address"
    read_capacity   = 0
    write_capacity  = 0
    projection_type = "INCLUDE"
    non_key_attributes = [
      "admin",
    "password"]
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
