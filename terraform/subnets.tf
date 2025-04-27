resource "google_compute_subnetwork" "subnet-1-johannesburg" {
  name          = "subnet-1-johannesburg"
  ip_cidr_range = "10.214.10.0/24"
  region        = "africa-south1"
  network       = google_compute_network.virtual-private-cloud.id
}