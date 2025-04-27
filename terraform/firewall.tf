resource "google_compute_firewall" "allow-80-from-anywhere-to-instances" {
  depends_on = [google_compute_network.
vpc]
  name    = allow-80-from-anywhere-to-instances
  network = var.virtual-private-cloud

  direction     = "INGRESS"
  priority      = 1000

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http-server"]
}