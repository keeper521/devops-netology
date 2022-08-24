resource "yandex_compute_instance" "nat-instance" {
  name                      = "nat-instance"
  zone                      = "ru-central1-a"
  hostname                  = "nat.yc"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.nat-instance}"
      name        = "root-nat-instance"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.public-subnet.id}"
    nat        = true
    ip_address = "192.168.10.254"
  }

  metadata = {
    user-data = "${file("./meta.txt")}"
  }
}