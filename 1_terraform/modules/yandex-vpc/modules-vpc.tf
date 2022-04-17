resource "yandex_vpc_network" "this" {
  name = "${var.name}-network"
}

resource "yandex_vpc_subnet" "this" {
  for_each       = { for z in var.subnets : z.zone => z }
  name           = "${var.name}-${each.value.zone}"
  v4_cidr_blocks = each.value.v4_cidr_blocks
  zone           = each.value.zone
  network_id     = yandex_vpc_network.this.id

  depends_on = [
    yandex_vpc_network.this,
  ]
}
