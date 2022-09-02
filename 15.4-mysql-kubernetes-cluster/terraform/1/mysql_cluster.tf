resource "yandex_mdb_mysql_cluster" "netology-cluster" {
  name                = "netology-cluster"
  environment         = "PRESTABLE"
  network_id          = "${yandex_vpc_network.VPC.id}"
  version             = "8.0"
  deletion_protection = true

  backup_window_start {
    hours   = "23"
    minutes = "59"
  }  

  resources {
    resource_preset_id = "b1.medium"
    disk_type_id       = "network-hdd"
    disk_size          = "20"
  }

  host {
    zone      = "ru-central1-a"
    name      = "mysql-1"
    subnet_id = "${yandex_vpc_subnet.private-subnet-a.id}"
  }

  host {
    zone      = "ru-central1-b"
    name      = "mysql-2"
    subnet_id = "${yandex_vpc_subnet.private-subnet-b.id}"
    replication_source_name = "mysql-1"
  }
}

resource "yandex_mdb_mysql_database" "netology_db" {
  cluster_id = "${yandex_mdb_mysql_cluster.netology-cluster.id}"
  name       = "netology_db"
}

resource "yandex_mdb_mysql_user" "user-db" {
  cluster_id = "${yandex_mdb_mysql_cluster.netology-cluster.id}"
  name       = "user-01"
  password   = "${var.db_user-password}"
  permission {
    database_name = "${yandex_mdb_mysql_database.netology_db.name}"
    roles         = ["ALL"]
  }
}
