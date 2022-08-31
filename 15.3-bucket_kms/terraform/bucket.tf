resource "yandex_storage_bucket" "bucket" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  bucket     = "keeper2022"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = yandex_kms_symmetric_key.key-a.id
        sse_algorithm     = "aws:kms"
      }
    }
  }  

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
