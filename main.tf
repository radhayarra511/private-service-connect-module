resource "google_compute_global_address" "psc" {
  provider     = google-beta
  project      = var.project_id
  name         = var.ip_address_name
  address_type = "INTERNAL"
  purpose      = "PRIVATE_SERVICE_CONNECT"
  network      = "projects/${var.project_id}/global/networks/${var.network_name}"
  address      = var.ip_address
}

resource "google_compute_global_forwarding_rule" "psc" {
  provider              = google-beta
  project               = var.project_id
  name                  = var.forward_rule_name
  target                = var.forward_rule_target
  network               = var.network_name
  ip_address            = google_compute_global_address.psc.id
  load_balancing_scheme = ""
}

