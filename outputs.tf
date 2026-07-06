output "sentinel_data_connector_aws_cloud_trails" {
  description = "All sentinel_data_connector_aws_cloud_trail resources"
  value       = azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails
}
output "sentinel_data_connector_aws_cloud_trails_aws_role_arn" {
  description = "List of aws_role_arn values across all sentinel_data_connector_aws_cloud_trails"
  value       = [for k, v in azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails : v.aws_role_arn]
}
output "sentinel_data_connector_aws_cloud_trails_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all sentinel_data_connector_aws_cloud_trails"
  value       = [for k, v in azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails : v.log_analytics_workspace_id]
}
output "sentinel_data_connector_aws_cloud_trails_name" {
  description = "List of name values across all sentinel_data_connector_aws_cloud_trails"
  value       = [for k, v in azurerm_sentinel_data_connector_aws_cloud_trail.sentinel_data_connector_aws_cloud_trails : v.name]
}

