output "sentinel_data_connector_aws_cloud_trails_id" {
  description = "Map of id values across all sentinel_data_connector_aws_cloud_trails, keyed the same as var.sentinel_data_connector_aws_cloud_trails"
  value       = { for k, v in azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails : k => v.id }
}
output "sentinel_data_connector_aws_cloud_trails_aws_role_arn" {
  description = "Map of aws_role_arn values across all sentinel_data_connector_aws_cloud_trails, keyed the same as var.sentinel_data_connector_aws_cloud_trails"
  value       = { for k, v in azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails : k => v.aws_role_arn }
}
output "sentinel_data_connector_aws_cloud_trails_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_data_connector_aws_cloud_trails, keyed the same as var.sentinel_data_connector_aws_cloud_trails"
  value       = { for k, v in azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails : k => v.log_analytics_workspace_id }
}
output "sentinel_data_connector_aws_cloud_trails_name" {
  description = "Map of name values across all sentinel_data_connector_aws_cloud_trails, keyed the same as var.sentinel_data_connector_aws_cloud_trails"
  value       = { for k, v in azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails : k => v.name }
}

