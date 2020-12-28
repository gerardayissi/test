terraform {
  backend "gcs" {
    bucket  = "tst1-integration-3ca6-gerard"
    prefix  = "terraform/state" 
  }
}

provider "google" {
 credentials = file("/Users/hgo2/google/keys/tbi-mao-tst1.json")
 project     = "tst1-integration-3ca6"
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

