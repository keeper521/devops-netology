resource "yandex_vpc_subnet" "private-subnet-a" {
  name = "private-a"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.VPC.id}"
  v4_cidr_blocks = ["192.168.20.0/24"]
}


resource "yandex_vpc_subnet" "private-subnet-b" {
  name = "private-b"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.VPC.id}"
  v4_cidr_blocks = ["192.168.30.0/24"]
}
