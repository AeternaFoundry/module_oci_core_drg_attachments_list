variable "core_drg_attachments_lists" {
  description = <<EOT
Map of core_drg_attachments_lists, attributes below
Required:
    - drg_id
Optional:
    - attachment_type
    - is_cross_tenancy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    drg_id           = string
    attachment_type  = optional(string)
    is_cross_tenancy = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

