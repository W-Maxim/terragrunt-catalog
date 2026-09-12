output "name" {
  description = "The name of the storage account."
  value       = module.storage_account.name
}

output "id" {
	description = "The ID of the storage account."
	value       = module.storage_account.id
}