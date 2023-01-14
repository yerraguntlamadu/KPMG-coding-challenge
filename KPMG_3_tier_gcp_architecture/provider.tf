terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.48.0"
    }
  }
}

provider "google" {
  project     = "emerald-circle-374316"
  region      = "us-central1"
  credentials = file("${path.module}/emerald-circle-374316-c60805761284.json")
  zone        = "us-central1-a"
}
