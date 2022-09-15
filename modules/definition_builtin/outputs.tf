output "id" {
  description = "The Id of the Policy Definition"
  value       = data.azurerm_policy_definition.def_builtin.id
}

output "name" {
  description = "The name of the Policy Definition"
  value       = var.policy_name
}

output "rules" {
  description = "The rules of the Policy Definition"
  value       = data.azurerm_policy_definition.def_builtin.policy_rule
}

output "parameters" {
  description = "The parameters of the Policy Definition"
  value       = data.azurerm_policy_definition.def_builtin.parameters
}

output "metadata" {
  description = "The metadata of the Policy Definition"
  value       = data.azurerm_policy_definition.def_builtin.metadata
}

output "definition" {
  description = "Policy definition from data source"
  value = {
    // not needed?
    # display_name        = var.policy_name    
    # mode                = var.policy_mode
    # management_group_id = var.management_group_id
    id          = data.azurerm_policy_definition.def_builtin.id
    name        = var.policy_name
    description = data.azurerm_policy_definition.def_builtin.description
    metadata    = data.azurerm_policy_definition.def_builtin.metadata
    parameters  = data.azurerm_policy_definition.def_builtin.parameters != "" ? data.azurerm_policy_definition.def_builtin.parameters : local.default_parameter
    policy_rule = data.azurerm_policy_definition.def_builtin.policy_rule
  }
}
