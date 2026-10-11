resource "oci_core_drg_attachments_list" "core_drg_attachments_lists" {
  for_each = var.core_drg_attachments_lists

  drg_id           = each.value.drg_id
  attachment_type  = each.value.attachment_type
  is_cross_tenancy = each.value.is_cross_tenancy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

