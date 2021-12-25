```
provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.yc_cloud_id
  zone      = var.yc_region
}

locals {
  vm-1_instance_type_map = {
    stage = "t3.micro"
    prod = "t3.large"
  }
  vm-1_instance_count_map = {
    stage = 1
    prod = 2
  }
}

instance_type = local.vm-1_instance_type_map[terraform.workspace]

resource "yandex_compute_instance" "vm-1" {
   name = "terraform1"

#  instance_type = local.vm-1_instance_type_map[terraform.workspace]
  
  count = local.vm-1_instance_count_map[terraform.workspace]

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8vmcue7aajpmeo39kk"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_vpc_network" "network-1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

output "internal_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "external_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}

terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "keeper521"
    region     = "us-east-1"
    key        = "test/keeper521.tfstate"
    access_key = "HqKRNJ9NVlavARrbRVhl"
    secret_key = "MXz14JteNGt8wLDUu4sDF0LhbvVhlHWoPYQITrn7"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
```
