output "rules_id" {
  description = "Map of id values across all rules, keyed the same as var.rules except keys with no id are omitted"
  value       = { for k, v in auth0_rule.rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rules_enabled" {
  description = "Map of enabled values across all rules, keyed the same as var.rules except keys with no enabled are omitted"
  value       = { for k, v in auth0_rule.rules : k => v.enabled if v.enabled != null }
}
output "rules_name" {
  description = "Map of name values across all rules, keyed the same as var.rules except keys with no name are omitted"
  value       = { for k, v in auth0_rule.rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rules_order" {
  description = "Map of order values across all rules, keyed the same as var.rules except keys with no order are omitted"
  value       = { for k, v in auth0_rule.rules : k => v.order if v.order != null }
}
output "rules_script" {
  description = "Map of script values across all rules, keyed the same as var.rules except keys with no script are omitted"
  value       = { for k, v in auth0_rule.rules : k => v.script if v.script != null && length(v.script) > 0 }
}

