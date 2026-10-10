resource "auth0_rule" "rules" {
  for_each = var.rules

  name    = each.value.name
  script  = each.value.script
  enabled = each.value.enabled
  order   = each.value.order
}

