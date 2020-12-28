resource "google_storage_bucket" "storage-001" {
  name          = "tbi-mao-gerard-storage-001"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "storage-002" {
  name          = "tbi-mao-gerard-storage-002"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "storage-004-1" {
  name          = var.image_id
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}


