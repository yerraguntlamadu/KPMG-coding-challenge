resource "google_compute_global_forwarding_rule" "default" {
  name                  = var.forward_rule_name
  ip_protocol           = var.ip_protocol
  ip_version            = var.ip_version
  load_balancing_scheme = var.load_balancing_scheme
  port_range            = var.port_range
  target                = google_compute_target_http_proxy.default.id

}

resource "google_compute_target_http_proxy" "default" {
  name    = var.http_proxy_name
  url_map = google_compute_url_map.default.id
}

resource "google_compute_url_map" "default" {
  name            = var.url_map
  default_service = var.default_service
}