resource "google_container_cluster" "primary" {
  project  = var.project
  name     = var.name
  location = var.location

  deletion_protection = false

  remove_default_node_pool = false
  initial_node_count       = 1
  gateway_api_config {
    channel = "CHANNEL_STANDARD"
  }
  node_config {
    machine_type = "e2-standard-2"
    disk_size_gb = 50
  }
}