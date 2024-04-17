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

module "im-workspace" {
 source = "terraform-google-modules/bootstrap/google//modules/im_cloudbuild_workspace"
 version = "~> 7.0"

 project_id = "karutselvan-dm-test"
 deployment_id = "imgit"
 im_deployment_repo_uri = "github.com/karutselvan/im-auto-git"
 im_deployment_ref = "main"
 github_app_installation_id = "49531130"
 github_personal_access_token = "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"
}
