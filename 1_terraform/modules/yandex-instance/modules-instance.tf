data "yandex_compute_image" "image" {
  family = var.family
}

resource "yandex_compute_instance" "instance" {
  name        = var.vm_name
  zone        = var.vm_zone
  hostname    = var.vm_hostname
  platform_id = var.platform_id
  resources {
    cores         = var.resources.cores
    core_fraction = var.resources.core_fraction
    memory        = var.resources.memory
  }

  scheduling_policy {
    preemptible = true
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.image.id
      size     = var.resources.disk_size
      type     = var.resources.boot_disk_type
    }
  }

  network_interface {
    subnet_id = var.vpc_subnet_id
    nat       = var.nat
  }

  metadata = {
    user-data = var.users
  }
}
