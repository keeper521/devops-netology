resource "yandex_lb_target_group" "foo" {
  name      = "lb-group"

  target {
    subnet_id = "${yandex_vpc_subnet.private-subnet.id}"
    address   = "192.168.20.11"
  }

  target {
    subnet_id = "${yandex_vpc_subnet.private-subnet.id}"
    address   = "192.168.20.12"
  }

  target {
    subnet_id = "${yandex_vpc_subnet.private-subnet.id}"
    address   = "192.168.20.13"
  }
}