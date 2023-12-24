terraform {
  backend "gcs" {
    bucket = "tf-devops-kuber-2023-bucket"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/autonibit/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}
