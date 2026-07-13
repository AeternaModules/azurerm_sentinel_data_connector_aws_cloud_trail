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
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_data_connector_aws_cloud_trail's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: aws_role_arn
  #   source:    [from validate.IsARN] !ok
  # path: aws_role_arn
  #   source:    [from validate.IsARN] !strings.HasPrefix(v, "arn:") || strings.Count(v, ":") < 5
}

