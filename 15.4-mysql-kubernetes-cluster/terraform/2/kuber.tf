resource "yandex_iam_service_account" "kuber-sa" {
  name        = "kuber-sa"
  description = "service account for kuber"
  folder_id   = "${var.yandex_folder_id}"
}

resource "yandex_resourcemanager_folder_iam_binding" "editor" {
  folder_id   = "${var.yandex_folder_id}"
  role        = "editor"
  members     = [
    "serviceAccount:${yandex_iam_service_account.kuber-sa.id}",
  ]
}

resource "yandex_resourcemanager_folder_iam_binding" "images-puller" {
 folder_id = "${var.yandex_folder_id}"
 role      = "container-registry.images.puller"
 members   = [
   "serviceAccount:${yandex_iam_service_account.kuber-sa.id}"
 ]
}

resource "yandex_kubernetes_cluster" "netology" {
 network_id = "${yandex_vpc_network.VPC.id}"
 master {
    regional {
      region = "ru-central1"

      location {
        zone      = "${yandex_vpc_subnet.public-subnet-a.zone}"
        subnet_id = "${yandex_vpc_subnet.public-subnet-a.id}"
      }

      location {
        zone      = "${yandex_vpc_subnet.public-subnet-b.zone}"
        subnet_id = "${yandex_vpc_subnet.public-subnet-b.id}"
      }

      location {
        zone      = "${yandex_vpc_subnet.public-subnet-c.zone}"
        subnet_id = "${yandex_vpc_subnet.public-subnet-c.id}"
      }
    }
   public_ip = true
 }
 service_account_id      = "${yandex_iam_service_account.kuber-sa.id}"
 node_service_account_id = "${yandex_iam_service_account.kuber-sa.id}"
   depends_on = [
     yandex_resourcemanager_folder_iam_binding.editor,
     yandex_resourcemanager_folder_iam_binding.images-puller
   ]
    kms_provider {
    key_id = "${yandex_kms_symmetric_key.key-a.id}"
  }
}

resource "yandex_kubernetes_node_group" "kuber-group-a" {
  cluster_id = "${yandex_kubernetes_cluster.netology.id}"
  name       = "kuber-group-a"
  
  instance_template {
    platform_id = "standard-v1"

    network_interface {
      subnet_ids         = ["${yandex_vpc_subnet.public-subnet-a.id}"]
    }
    resources {
      memory = 2
      cores  = 2
    }
    boot_disk {
      type = "network-hdd"
      size = 64
    }
    container_runtime {
      type = "containerd"
    }
  }

  allocation_policy {
    location {
      zone = "ru-central1-a"
    }
  }  

 scale_policy {
    auto_scale {
      min     = 1
      max     = 2
      initial = 1
    }
  }
}

resource "yandex_kubernetes_node_group" "kuber-group-b" {
  cluster_id = "${yandex_kubernetes_cluster.netology.id}"
  name       = "kuber-group-b"
  
  instance_template {
    platform_id = "standard-v1"

    network_interface {
      subnet_ids         = ["${yandex_vpc_subnet.public-subnet-b.id}"]
    }
    resources {
      memory = 2
      cores  = 2
    }
    boot_disk {
      type = "network-hdd"
      size = 64
    }
    container_runtime {
      type = "containerd"
    }
  }

  allocation_policy {
    location {
      zone = "ru-central1-b"
    }
  }  

 scale_policy {
    auto_scale {
      min     = 1
      max     = 2
      initial = 1
    }
  }
}

resource "yandex_kubernetes_node_group" "kuber-group-c" {
  cluster_id = "${yandex_kubernetes_cluster.netology.id}"
  name       = "kuber-group-c"
  
  instance_template {
    platform_id = "standard-v1"

    network_interface {
      subnet_ids         = ["${yandex_vpc_subnet.public-subnet-c.id}"]
    }
    resources {
      memory = 2
      cores  = 2
    }
    boot_disk {
      type = "network-hdd"
      size = 64
    }
    container_runtime {
      type = "containerd"
    }
  }

  allocation_policy {
    location {
      zone = "ru-central1-c"
    }
  }  

 scale_policy {
    auto_scale {
      min     = 1
      max     = 2
      initial = 1
    }
  }
}