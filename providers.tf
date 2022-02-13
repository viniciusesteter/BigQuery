terraform {
  backend "gcs" {
    bucket = "vini-terraform"
    prefix = "state"
  }
}

provider "google" {
  credentials = file("credible-skill-341215-7fb58650bff2.json")
  project     = var.project_id
  region      = var.regiao
}