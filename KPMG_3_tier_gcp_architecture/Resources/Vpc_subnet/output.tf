output "vpc_id" {
  value = google_compute_network.vpc_nw.id
}
output "subnet_id_name" {
    value = google_compute_subnetwork.subnet_nw.id
}