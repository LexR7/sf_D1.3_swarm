variable "cloud_id" {
  description = "Идентификатор облака"
  type        = string
}

variable "folder_id" {
  description = "Идентификатор каталога"
  type        = string
}

variable "region" {
  description = "Регион"
  type        = string
}

variable "name" {
  description = "Наименование создаваемых ресурсов"
  type        = string
  default     = "terra"
}

variable "subnets" {
  description = "Данные подсетей (зона, адрес)"
  type = list(object({
    subnet_id      = string
    zone           = string
    v4_cidr_blocks = list(string)
  }))
  default = [
    {
      subnet_id      = ""
      zone           = "ru-central1-a"
      v4_cidr_blocks = ["10.0.0.0/24"]
    },
    {
      subnet_id      = ""
      zone           = "ru-central1-b"
      v4_cidr_blocks = ["10.0.1.0/24"]
    }
  ]
}

variable "vm_params" {
  description = "Параметры создаваемых серверов"
  type = list(object({
    name        = string
    family      = string
    platform_id = string
    nat         = bool
    resources   = object({ cores = number, core_fraction = number, memory = number, disk_size = number, boot_disk_type = string })
  }))
}

