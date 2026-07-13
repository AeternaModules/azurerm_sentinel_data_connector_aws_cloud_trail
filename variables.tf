variable "sentinel_data_connector_aws_cloud_trails" {
  description = <<EOT
Map of sentinel_data_connector_aws_cloud_trails, attributes below
Required:
    - aws_role_arn
    - log_analytics_workspace_id
    - name
EOT

  type = map(object({
    aws_role_arn               = string
    log_analytics_workspace_id = string
    name                       = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_data_connector_aws_cloud_trails : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

