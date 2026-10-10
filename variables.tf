variable "rules" {
  description = <<EOT
Map of rules, attributes below
Required:
    - name
    - script
Optional:
    - enabled
    - order
EOT

  type = map(object({
    name    = string
    script  = string
    enabled = optional(bool)
    order   = optional(number)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

