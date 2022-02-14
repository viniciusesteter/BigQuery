terraform {
  backend "gcs" {
    bucket = "vini-terraform"
    prefix = "state"
  }
}

provider "google" {
  credentials = file("../auth/gcp_auth.json")
  project     = var.project_id
  region      = var.regiao
}