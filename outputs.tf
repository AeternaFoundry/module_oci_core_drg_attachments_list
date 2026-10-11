output "core_drg_attachments_lists_id" {
  description = "Map of id values across all core_drg_attachments_lists, keyed the same as var.core_drg_attachments_lists except keys with no id are omitted"
  value       = { for k, v in oci_core_drg_attachments_list.core_drg_attachments_lists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_drg_attachments_lists_attachment_type" {
  description = "Map of attachment_type values across all core_drg_attachments_lists, keyed the same as var.core_drg_attachments_lists except keys with no attachment_type are omitted"
  value       = { for k, v in oci_core_drg_attachments_list.core_drg_attachments_lists : k => v.attachment_type if v.attachment_type != null && length(v.attachment_type) > 0 }
}
output "core_drg_attachments_lists_drg_all_attachments" {
  description = "Map of drg_all_attachments values across all core_drg_attachments_lists, keyed the same as var.core_drg_attachments_lists except keys with no drg_all_attachments are omitted"
  value       = { for k, v in oci_core_drg_attachments_list.core_drg_attachments_lists : k => v.drg_all_attachments if v.drg_all_attachments != null && length(v.drg_all_attachments) > 0 }
}
output "core_drg_attachments_lists_drg_id" {
  description = "Map of drg_id values across all core_drg_attachments_lists, keyed the same as var.core_drg_attachments_lists except keys with no drg_id are omitted"
  value       = { for k, v in oci_core_drg_attachments_list.core_drg_attachments_lists : k => v.drg_id if v.drg_id != null && length(v.drg_id) > 0 }
}
output "core_drg_attachments_lists_is_cross_tenancy" {
  description = "Map of is_cross_tenancy values across all core_drg_attachments_lists, keyed the same as var.core_drg_attachments_lists except keys with no is_cross_tenancy are omitted"
  value       = { for k, v in oci_core_drg_attachments_list.core_drg_attachments_lists : k => v.is_cross_tenancy if v.is_cross_tenancy != null }
}

