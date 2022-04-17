# yandex-instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | ~> 0.69.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.69.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.instance](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [yandex_compute_image.image](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_family"></a> [family](#input\_family) | Тип образа | `string` | `"lemp"` | no |
| <a name="input_nat"></a> [nat](#input\_nat) | Нужен ли внешний адрес | `bool` | `true` | no |
| <a name="input_platform_id"></a> [platform\_id](#input\_platform\_id) | Тип | `string` | `"standard-v1"` | no |
| <a name="input_resources"></a> [resources](#input\_resources) | Параметры создаваемого сервера (cores,core\_fraction,memory,disk size) | <pre>object({<br>    cores          = number<br>    core_fraction  = number<br>    memory         = number<br>    disk_size      = number<br>    boot_disk_type = string<br>  })</pre> | <pre>{<br>  "boot_disk_type": "network_ssd",<br>  "core_fraction": 20,<br>  "cores": 2,<br>  "disk_size": 3,<br>  "memory": 2<br>}</pre> | no |
| <a name="input_users"></a> [users](#input\_users) | Содержимое файла с пользователями | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Имя сервера | `string` | `"terra-server"` | no |
| <a name="input_vm_zone"></a> [vm\_zone](#input\_vm\_zone) | Зона создаваемого экземпляра | `string` | `"ru-central1-a"` | no |
| <a name="input_vpc_subnet_id"></a> [vpc\_subnet\_id](#input\_vpc\_subnet\_id) | VPC subnet network id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address"></a> [external\_ip\_address](#output\_external\_ip\_address) | Назначенный внешний IP-адрес |
| <a name="output_internal_ip_address"></a> [internal\_ip\_address](#output\_internal\_ip\_address) | Назначенный внутренний IP-адрес |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
