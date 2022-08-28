resource "yandex_vpc_subnet" "public-subnet" {
  name = "public"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.VPC.id}"
  v4_cidr_blocks = ["192.168.10.0/24"]
}
