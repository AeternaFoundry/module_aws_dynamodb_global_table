variable "dynamodb_global_tables" {
  description = <<EOT
Map of dynamodb_global_tables, attributes below
Required:
    - name
    - replica (block):
        - region_name (required)
Optional:
    - region
EOT

  type = map(object({
    name   = string
    region = optional(string)
    replica = list(object({
      region_name = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dynamodb_global_tables : (
        length(v.replica) >= 1
      )
    ])
    error_message = "Each replica list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

