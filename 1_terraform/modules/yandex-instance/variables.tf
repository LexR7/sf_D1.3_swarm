variable "vm_name" {
  description = "Имя сервера"
  type        = string
  default     = "terra-server"
}

variable "vm_zone" {
  description = "Зона создаваемого экземпляра"
  type        = string
  default     = "ru-central1-a"
}

variable "vm_hostname" {
  description = "Имя хоста"
  type        = string
  default     = "vm1"
}

variable "platform_id" {
  description = "Тип"
  type        = string
  default     = "standard-v1"
}

variable "nat" {
  description = "Нужен ли внешний адрес"
  type        = bool
  default     = true
}

variable "family" {
  description = "Тип образа"
  type        = string
  default     = "lemp"
}

variable "resources" {
  description = "Параметры создаваемого сервера (cores,core_fraction,memory,disk size)"
  type = object({
    cores          = number
    core_fraction  = number
    memory         = number
    disk_size      = number
    boot_disk_type = string
  })
  default = {
    cores          = 2
    core_fraction  = 20
    memory         = 2
    disk_size      = 3
    boot_disk_type = "network_ssd"
  }
}

variable "vpc_subnet_id" {
  description = "VPC subnet network id"
  type        = string
}

variable "users" {
  description = "Содержимое файла с пользователями"
  type        = string
}
