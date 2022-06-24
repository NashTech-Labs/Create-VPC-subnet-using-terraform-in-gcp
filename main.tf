resource "google_compute_network" "vpc_network" {

name = var.vpc_name

auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "public-subnetwork" {

name = var.subnet_name

ip_cidr_range = var.ip_cidr_range

region = var.region

network = google_compute_network.vpc_network.name

}