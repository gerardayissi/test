terraform {
  backend "gcs" {
    bucket  = "manhattan-active-omni-tf-state-prod-001"
    prefix  = "terraform/state" 
  }
}

provider "google" {
 credentials = file("/Users/hgo2/google/keys/manhattan-active-omni.json")
 project     = "manhattan-active-omni"
 region      = "us-east4"
}

resource "google_pubsub_topic" "item-005" {
  name = var.storage-005
}

module "pubsub" {
  source = "./pubsub"
}

module "cloudstorage" {
  source = "./cloudstorage"
  image_id = var.storage-004
}

