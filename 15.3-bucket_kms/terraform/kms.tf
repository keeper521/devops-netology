resource "yandex_kms_symmetric_key" "key-a" {
  name              = "kms-bucket"
  description       = "kms-netology"
  default_algorithm = "AES_256"
  rotation_period   = "8760h"
  lifecycle {
    prevent_destroy = true
  }
}