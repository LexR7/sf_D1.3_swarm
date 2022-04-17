# yandex-vpc

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
| [yandex_vpc_network.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Наименование | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Данные подсетей (зона, адрес) | <pre>list(object({<br>    zone           = string<br>    v4_cidr_blocks = list(string)<br>  }))</pre> | <pre>[<br>  {<br>    "v4_cidr_blocks": [<br>      "10.0.0.0/24"<br>    ],<br>    "zone": "ru-central1-a"<br>  },<br>  {<br>    "v4_cidr_blocks": [<br>      "10.0.1.0/24"<br>    ],<br>    "zone": "ru-central1-b"<br>  },<br>  {<br>    "v4_cidr_blocks": [<br>      "10.0.2.0/24"<br>    ],<br>    "zone": "ru-central1-c"<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | Идентификатор сети |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | Идентификатор подсети |
| <a name="output_subnet_zones"></a> [subnet\_zones](#output\_subnet\_zones) | Зона подсети |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
