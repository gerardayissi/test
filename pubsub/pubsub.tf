resource "google_pubsub_topic" "itemimage" {
  name = "tst1-item-image-series-001"
}

resource "google_pubsub_subscription" "itemimage" {
  name  = "tst1-item-image-series-001"
  topic = google_pubsub_topic.itemimage.name

  labels = {
    foo = "bar"
  }

  # 20 minutes
  message_retention_duration = "1200s"
  retain_acked_messages      = true

  ack_deadline_seconds = 20

  expiration_policy {
    ttl = "300000.5s"
  }
  retry_policy {
    minimum_backoff = "10s"
  }

  enable_message_ordering    = false
}
