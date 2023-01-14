resource "google_compute_http_health_check" "default" {
  name               = var.http_health_check
  request_path       = "/"
  check_interval_sec = var.check_interval_sec
  timeout_sec        = var.timeout_sec
}

resource "google_compute_backend_service" "default" {
  name          = var.backedn_service_name
  health_checks = [google_compute_http_health_check.default.id]
  port_name     = "http"
  protocol      = "HTTP"
  enable_cdn    = "false"
  backend {
    group           = var.group
    balancing_mode  = var.balancing_mode
  }
}