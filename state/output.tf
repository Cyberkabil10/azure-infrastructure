output "storage_key" {
  value     = module.storage.storage_access_key
  sensitive = true
}

output "storage_id" {
  value     = module.storage.storage_id
  sensitive = true
}

output "resource_group_name" {
  value     = var.resource_group_name
  sensitive = true
}
output "resource_group_location" {
  value     = var.location
  sensitive = true
}

output "storage_account_name" {
  value     = var.storage_account_name
  sensitive = true
}

output "container_name" {
  value = var.container_name
}