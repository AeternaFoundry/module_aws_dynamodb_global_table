output "dynamodb_global_tables_id" {
  description = "Map of id values across all dynamodb_global_tables, keyed the same as var.dynamodb_global_tables"
  value       = { for k, v in aws_dynamodb_global_table.dynamodb_global_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dynamodb_global_tables_arn" {
  description = "Map of arn values across all dynamodb_global_tables, keyed the same as var.dynamodb_global_tables"
  value       = { for k, v in aws_dynamodb_global_table.dynamodb_global_tables : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "dynamodb_global_tables_name" {
  description = "Map of name values across all dynamodb_global_tables, keyed the same as var.dynamodb_global_tables"
  value       = { for k, v in aws_dynamodb_global_table.dynamodb_global_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dynamodb_global_tables_region" {
  description = "Map of region values across all dynamodb_global_tables, keyed the same as var.dynamodb_global_tables"
  value       = { for k, v in aws_dynamodb_global_table.dynamodb_global_tables : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dynamodb_global_tables_replica" {
  description = "Map of replica values across all dynamodb_global_tables, keyed the same as var.dynamodb_global_tables"
  value       = { for k, v in aws_dynamodb_global_table.dynamodb_global_tables : k => v.replica if v.replica != null && length(v.replica) > 0 }
}

