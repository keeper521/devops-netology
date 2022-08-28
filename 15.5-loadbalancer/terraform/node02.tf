resource "yandex_compute_instance" "node02" {
  name                      = "node02"
  zone                      = "ru-central1-a"
  hostname                  = "node02.yc"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.pc}"
      name        = "root-node02"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.private-subnet.id}"
    ip_address = "192.168.20.12"
  }

  metadata = {
    user-data = "${file("./meta.txt")}"
  }
}
