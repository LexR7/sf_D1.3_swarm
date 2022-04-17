output "internal_ip_address_vm_1" {
  description = "Назначенный внутренний IP-адрес"
  value       = module.vm-1.internal_ip_address
}

output "external_ip_address_vm_1" {
  description = "Назначенный внешний IP-адрес"
  value       = module.vm-1.external_ip_address
}
