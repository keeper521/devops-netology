resource "yandex_vpc_subnet" "private-subnet" {
  name = "private"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.VPC.id}"
  v4_cidr_blocks = ["192.168.20.0/24"]
  route_table_id = "${yandex_vpc_route_table.private_route.id}"
}
