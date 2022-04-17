output "network_id" {
  description = "Идентификатор сети"
  value       = yandex_vpc_network.this.id
}

output "subnet_ids" {
  description = "Идентификатор подсети"
  value       = [for subnet in yandex_vpc_subnet.this : subnet.id]
}

output "subnet_zones" {
  description = "Зона подсети"
  value       = [for subnet in yandex_vpc_subnet.this : subnet.zone]
}
