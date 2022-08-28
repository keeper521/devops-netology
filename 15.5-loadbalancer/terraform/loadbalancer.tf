resource "yandex_lb_network_load_balancer" "foo" {
  name = "network-lb"
  listener {
    name = "network-listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }
  attached_target_group {
    target_group_id = "${yandex_lb_target_group.foo.id}"
    healthcheck {
      name = "network-test"
        http_options {
          port = 80
          path = "/"
        }
      interval = 2
      timeout = 1
      unhealthy_threshold = 2
    }
  }
}
