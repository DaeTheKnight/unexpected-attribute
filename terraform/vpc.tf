resource "google_compute_network" "cloud-owner" {
  name                    = var.virtual-private-cloud
  auto_create_subnetworks = false
}
