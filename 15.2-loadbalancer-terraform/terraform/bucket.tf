resource "yandex_storage_bucket" "bucket" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  bucket     = "keeper2022"

  anonymous_access_flags {
    read = true
    list = false
  }
}

resource "yandex_storage_object" "file" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  bucket     = "keeper2022"
  key        = "Privet.jpg"
  source     = "${path.module}/Privet.jpg"
}
