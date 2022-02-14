terraform {
  backend "gcs" {
    bucket = "vini-terraform"
    prefix = "state"
  }
}

provider "google" {
  credentials = file("gcp_auth.json")
  project     = var.project_id
  region      = var.regiao
}