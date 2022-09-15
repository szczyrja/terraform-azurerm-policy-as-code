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
  description = "The combined Policy Definition resource node"
  value = {
    // not needed?
    # display_name        = var.policy_name    
    # mode                = var.policy_mode
    # management_group_id = var.management_group_id
    id          = data.azurerm_policy_definition.def_builtin.id
    name        = var.policy_name
    description = data.azurerm_policy_definition.def_builtin.description
    metadata    = jsonencode(data.azurerm_policy_definition.def_builtin.metadata)
    parameters  = jsonencode(data.azurerm_policy_definition.def_builtin.parameters)
    policy_rule = jsonencode(data.azurerm_policy_definition.def_builtin.policy_rule)
  }
}