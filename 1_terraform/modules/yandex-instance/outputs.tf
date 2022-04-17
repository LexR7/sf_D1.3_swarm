output "internal_ip_address" {
  description = "Назначенный внутренний IP-адрес"
  value       = yandex_compute_instance.instance.network_interface.0.ip_address
}

output "external_ip_address" {
  description = "Назначенный внешний IP-адрес"
  value       = yandex_compute_instance.instance.network_interface.0.nat_ip_address
}
