variable "project_id" {
  type = string
}

resource "google_compute_network" "vpc_network" {
  name    = "my-custom-mode-network"
  project = var.project_id
}

output "vpc_id"{
  value = google_compute_network.vpc_network.id
}
