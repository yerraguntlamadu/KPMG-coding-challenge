resource "google_compute_health_check" "autohealing" {
  name                = var.com_healthcheck
  check_interval_sec  = var.check_interval_sec
  timeout_sec         = var.timeout_sec
  healthy_threshold   = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold

  http_health_check {
    request_path = "/"
    port         = "8080"
  }
}

resource "google_compute_instance_group_manager" "group_instance_man" {
  name               = var.com_instancegroup
  base_instance_name = var.base_instance_name
  zone               = var.zone
  target_size        = var.target_size
  version {
    instance_template = var.instance_template
  }

  named_port {
    name = "http" 
    port = 8080
  }

  auto_healing_policies {
    health_check      = google_compute_health_check.autohealing.id
    initial_delay_sec = 300
  }
}

resource "google_compute_autoscaler" "foobar" {
  name   = var.com_autoscale_name
  zone   = var.zone
  target = google_compute_instance_group_manager.group_instance_man.id
  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 1
    cooldown_period = 60

    cpu_utilization {
      target = 0.5
    }
  }
}