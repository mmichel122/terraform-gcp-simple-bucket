terraform {
  backend "remote" {
    organization = "modus-demo"
    workspaces {
      name = "gcp-bucket-demo-eu"
    }
  }
}

provider "google" {
  #credentials = "${file("./creds/serviceaccount.json")}"
  project = var.project_id
  region  = var.location
}

resource "google_storage_bucket" "simple" {
  name     = var.bucket_name
  location = "EU"
}
