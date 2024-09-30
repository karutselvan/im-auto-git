variable "project_id" {
  type = string
  default = "cloud-appcenter-e2e-testing"
}

resource "google_storage_bucket" "imtestbucket" {
 name          = "imtestbucket"
 location      = "US"
 storage_class = "STANDARD"
 project       = var.project_id

 uniform_bucket_level_access = true
}
