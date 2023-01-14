resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_name
}

resource "google_compute_instance_template" "name" {
    name = var.intance_template_name
    machine_type = var.machine_type
    tags = ["kpmg","template"]
    region = var.region
    labels = {name="kpmg_template"}
    disk {
      source_image= var.source_image
      auto_delete=true
      boot=true
    }
    network_interface {
      network = var.network
      subnetwork = var.subnet_work
    }
    metadata = {
        foo="bar"
    }
    service_account {
    email  = google_service_account.service_account.email
    scopes = ["cloud-platform"]
  }
}