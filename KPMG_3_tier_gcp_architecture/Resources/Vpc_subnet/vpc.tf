resource "google_compute_network" "vpc_nw" {
    name = var.vpc_name
    auto_create_subnetworks = var.auto_create
}

resource "google_compute_subnetwork" "subnet_nw" {
    name = var.subnet_name
    ip_cidr_range = var.cidr_range
    region = var.region
    network = google_compute_network.vpc_nw.id
}

resource "google_compute_firewall" "firewall_rule" {
    name = var.firewall_name
    network = google_compute_network.vpc_nw.name
    allow {
        protocol = "icmp"
    }
    allow {
      protocol="tcp"
      ports=["80", "8080"]
    }
    source_ranges = ["0.0.0.0/0"]
}