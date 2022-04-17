terraform {
  required_version = ">= 1.0.0"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.69.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

provider "yandex" {
  service_account_key_file = file("/Users/r_alexey/EduProjects/terra-service.json")
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
}

#module "vpc" {
#  source = "./modules/yandex-vpc"
#
#  name    = var.name
#  subnets = var.subnets
#}


module "vm-1" {
  source = "./modules/yandex-instance"

  vm_name       = "${var.name}-${var.vm_params[0].name}"
  vm_hostname   = var.vm_params[0].name
#  vm_zone       = module.vpc.subnet_zones[0]
  vm_zone       = var.subnets[0].zone
  family        = var.vm_params[0].family
  platform_id   = var.vm_params[0].platform_id
  nat           = var.vm_params[0].nat
#  vpc_subnet_id = module.vpc.subnet_ids[0]
  vpc_subnet_id = var.subnets[0].subnet_id
  users         = file("/Users/r_alexey/EduProjects/user_ansible.txt")
  resources     = var.vm_params[0].resources
}

module "vm-2" {
  source = "./modules/yandex-instance"

  vm_name       = "${var.name}-${var.vm_params[1].name}"
  vm_hostname   = var.vm_params[1].name
#  vm_zone       = module.vpc.subnet_zones[0]
  vm_zone       = var.subnets[0].zone
  family        = var.vm_params[1].family
  platform_id   = var.vm_params[1].platform_id
  nat           = var.vm_params[1].nat
#  vpc_subnet_id = module.vpc.subnet_ids[0]
  vpc_subnet_id = var.subnets[0].subnet_id
  users         = file("/Users/r_alexey/EduProjects/user_ansible.txt")
  resources     = var.vm_params[1].resources
}

module "vm-3" {
  source = "./modules/yandex-instance"

  vm_name       = "${var.name}-${var.vm_params[2].name}"
  vm_hostname   = var.vm_params[2].name
#  vm_zone       = module.vpc.subnet_zones[0]
  vm_zone       = var.subnets[0].zone
  family        = var.vm_params[2].family
  platform_id   = var.vm_params[2].platform_id
  nat           = var.vm_params[2].nat
#  vpc_subnet_id = module.vpc.subnet_ids[0]
  vpc_subnet_id = var.subnets[0].subnet_id
  users         = file("/Users/r_alexey/EduProjects/user_ansible.txt")
  resources     = var.vm_params[2].resources
}

#Создать инвентори файл для ансибл
resource "local_file" "inventory" {
    filename = "../2_ansible/inventory/hosts.yml"
    file_permission = "0644"
    content = <<-EOT
    [test]
    ${module.vm-1.external_ip_address}
    ${module.vm-2.external_ip_address}
    ${module.vm-3.external_ip_address}
  EOT
}