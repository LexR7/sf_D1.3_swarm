variable "name" {
  description = "Наименование"
  type        = string
}

variable "subnets" {
  description = "Данные подсетей (зона, адрес)"
  type = list(object({
    zone           = string
    v4_cidr_blocks = list(string)
  }))
  default = [
    {
      zone           = "ru-central1-a"
      v4_cidr_blocks = ["10.0.0.0/24"]
    },
    {
      zone           = "ru-central1-b"
      v4_cidr_blocks = ["10.0.1.0/24"]
    },
    {
      zone           = "ru-central1-c"
      v4_cidr_blocks = ["10.0.2.0/24"]
    }
  ]
}
